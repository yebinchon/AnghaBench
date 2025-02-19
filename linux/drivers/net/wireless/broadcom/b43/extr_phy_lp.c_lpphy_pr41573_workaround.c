
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;
struct b43_phy_lp {int txpctl_mode; int tx_pwr_idx_over; int antenna; scalar_t__ rc_cap; int channel; void* tssi_idx; void* tssi_npt; } ;
typedef int saved_tab ;
typedef int s8 ;
typedef enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;


 int B43_LPPHY_TXPCTL_OFF ;
 int B43_LPTAB32 (int,int) ;
 int B43_MMIO_CHANNEL ;
 int GFP_KERNEL ;
 int b43_lpphy_op_set_rx_antenna (struct b43_wldev*,int ) ;
 int b43_lpphy_op_software_rfkill (struct b43_wldev*,int) ;
 int b43_lptab_read_bulk (struct b43_wldev*,int ,unsigned int const,int *) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,unsigned int const,int *) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;
 int b43err (int ,char*) ;
 int * kcalloc (unsigned int const,int,int ) ;
 int kfree (int *) ;
 int lpphy_baseband_init (struct b43_wldev*) ;
 int lpphy_read_tx_pctl_mode_from_hardware (struct b43_wldev*) ;
 int lpphy_set_analog_filter (struct b43_wldev*,int ) ;
 int lpphy_set_rc_cap (struct b43_wldev*) ;
 int lpphy_set_tx_power_by_index (struct b43_wldev*,int) ;
 int lpphy_set_tx_power_control (struct b43_wldev*,int) ;
 int lpphy_table_init (struct b43_wldev*) ;
 int lpphy_tx_pctl_init (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_pr41573_workaround(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u32 *saved_tab;
 const unsigned int saved_tab_size = 256;
 enum b43_lpphy_txpctl_mode txpctl_mode;
 s8 tx_pwr_idx_over;
 u16 tssi_npt, tssi_idx;

 saved_tab = kcalloc(saved_tab_size, sizeof(saved_tab[0]), GFP_KERNEL);
 if (!saved_tab) {
  b43err(dev->wl, "PR41573 failed. Out of memory!\n");
  return;
 }

 lpphy_read_tx_pctl_mode_from_hardware(dev);
 txpctl_mode = lpphy->txpctl_mode;
 tx_pwr_idx_over = lpphy->tx_pwr_idx_over;
 tssi_npt = lpphy->tssi_npt;
 tssi_idx = lpphy->tssi_idx;

 if (dev->phy.rev < 2) {
  b43_lptab_read_bulk(dev, B43_LPTAB32(10, 0x140),
        saved_tab_size, saved_tab);
 } else {
  b43_lptab_read_bulk(dev, B43_LPTAB32(7, 0x140),
        saved_tab_size, saved_tab);
 }

 lpphy_table_init(dev);
 lpphy_baseband_init(dev);
 lpphy_tx_pctl_init(dev);
 b43_lpphy_op_software_rfkill(dev, 0);
 lpphy_set_tx_power_control(dev, B43_LPPHY_TXPCTL_OFF);
 if (dev->phy.rev < 2) {
  b43_lptab_write_bulk(dev, B43_LPTAB32(10, 0x140),
         saved_tab_size, saved_tab);
 } else {
  b43_lptab_write_bulk(dev, B43_LPTAB32(7, 0x140),
         saved_tab_size, saved_tab);
 }
 b43_write16(dev, B43_MMIO_CHANNEL, lpphy->channel);
 lpphy->tssi_npt = tssi_npt;
 lpphy->tssi_idx = tssi_idx;
 lpphy_set_analog_filter(dev, lpphy->channel);
 if (tx_pwr_idx_over != -1)
  lpphy_set_tx_power_by_index(dev, tx_pwr_idx_over);
 if (lpphy->rc_cap)
  lpphy_set_rc_cap(dev);
 b43_lpphy_op_set_rx_antenna(dev, lpphy->antenna);
 lpphy_set_tx_power_control(dev, txpctl_mode);
 kfree(saved_tab);
}
