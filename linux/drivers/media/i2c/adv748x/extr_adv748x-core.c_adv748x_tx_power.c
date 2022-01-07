
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_csi2 {int dummy; } ;


 int ADV748X_CSI_FS_AS_LS ;
 int ADV748X_CSI_FS_AS_LS_UNKNOWN ;
 int WARN_ONCE (int,char*) ;
 int adv748x_power_down_tx (struct adv748x_csi2*) ;
 int adv748x_power_up_tx (struct adv748x_csi2*) ;
 int is_tx_enabled (struct adv748x_csi2*) ;
 int tx_read (struct adv748x_csi2*,int ) ;

int adv748x_tx_power(struct adv748x_csi2 *tx, bool on)
{
 int val;

 if (!is_tx_enabled(tx))
  return 0;

 val = tx_read(tx, ADV748X_CSI_FS_AS_LS);
 if (val < 0)
  return val;






 WARN_ONCE((on && val & ADV748X_CSI_FS_AS_LS_UNKNOWN),
   "Enabling with unknown bit set");

 return on ? adv748x_power_up_tx(tx) : adv748x_power_down_tx(tx);
}
