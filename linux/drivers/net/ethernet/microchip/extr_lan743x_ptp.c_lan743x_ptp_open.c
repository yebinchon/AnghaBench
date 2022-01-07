
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int n_per_out; int * verify; int do_aux_work; int enable; int settime64; int * getcrosststamp; int gettime64; int adjtime; int adjfreq; int adjfine; int * pin_config; scalar_t__ pps; scalar_t__ n_pins; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int max_adj; int name; int owner; } ;
struct lan743x_ptp {int flags; int ptp_clock; TYPE_3__ ptp_clock_info; TYPE_1__* pin_config; } ;
struct lan743x_adapter {TYPE_4__* netdev; TYPE_2__* pdev; struct lan743x_ptp ptp; } ;
struct TYPE_9__ {int dev_addr; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {scalar_t__ chan; int func; scalar_t__ index; int name; } ;


 int CONFIG_PTP_1588_CLOCK ;
 int ENODEV ;
 int INT_BIT_1588_ ;
 int INT_EN_SET ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int LAN743X_PTP_MAX_FREQ_ADJ_IN_PPB ;
 int PTP_FLAG_ISR_ENABLED ;
 int PTP_FLAG_PTP_CLOCK_REGISTERED ;
 int PTP_INT_BIT_TX_SWTS_ERR_ ;
 int PTP_INT_BIT_TX_TS_ ;
 int PTP_INT_EN_SET ;
 int PTP_PF_PEROUT ;
 int PTP_TX_MOD2 ;
 int PTP_TX_MOD2_TX_PTP_CLR_UDPV4_CHKSUM_ ;
 int THIS_MODULE ;
 int ifup ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_ptp_close (struct lan743x_adapter*) ;
 int lan743x_ptp_enable (struct lan743x_adapter*) ;
 int lan743x_ptp_reset (struct lan743x_adapter*) ;
 int lan743x_ptp_sync_to_system_clock (struct lan743x_adapter*) ;
 int lan743x_ptpci_adjfine ;
 int lan743x_ptpci_adjfreq ;
 int lan743x_ptpci_adjtime ;
 int lan743x_ptpci_do_aux_work ;
 int lan743x_ptpci_enable ;
 int lan743x_ptpci_gettime64 ;
 int lan743x_ptpci_settime64 ;
 int netif_err (struct lan743x_adapter*,int ,TYPE_4__*,char*) ;
 int netif_info (struct lan743x_adapter*,int ,TYPE_4__*,char*) ;
 int ptp_clock_register (TYPE_3__*,int *) ;
 int snprintf (int ,int,char*,...) ;

int lan743x_ptp_open(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 int ret = -ENODEV;
 u32 temp;

 lan743x_ptp_reset(adapter);
 lan743x_ptp_sync_to_system_clock(adapter);
 temp = lan743x_csr_read(adapter, PTP_TX_MOD2);
 temp |= PTP_TX_MOD2_TX_PTP_CLR_UDPV4_CHKSUM_;
 lan743x_csr_write(adapter, PTP_TX_MOD2, temp);
 lan743x_ptp_enable(adapter);
 lan743x_csr_write(adapter, INT_EN_SET, INT_BIT_1588_);
 lan743x_csr_write(adapter, PTP_INT_EN_SET,
     PTP_INT_BIT_TX_SWTS_ERR_ | PTP_INT_BIT_TX_TS_);
 ptp->flags |= PTP_FLAG_ISR_ENABLED;

 if (!IS_ENABLED(CONFIG_PTP_1588_CLOCK))
  return 0;

 snprintf(ptp->pin_config[0].name, 32, "lan743x_ptp_pin_0");
 ptp->pin_config[0].index = 0;
 ptp->pin_config[0].func = PTP_PF_PEROUT;
 ptp->pin_config[0].chan = 0;

 ptp->ptp_clock_info.owner = THIS_MODULE;
 snprintf(ptp->ptp_clock_info.name, 16, "%pm",
   adapter->netdev->dev_addr);
 ptp->ptp_clock_info.max_adj = LAN743X_PTP_MAX_FREQ_ADJ_IN_PPB;
 ptp->ptp_clock_info.n_alarm = 0;
 ptp->ptp_clock_info.n_ext_ts = 0;
 ptp->ptp_clock_info.n_per_out = 1;
 ptp->ptp_clock_info.n_pins = 0;
 ptp->ptp_clock_info.pps = 0;
 ptp->ptp_clock_info.pin_config = ((void*)0);
 ptp->ptp_clock_info.adjfine = lan743x_ptpci_adjfine;
 ptp->ptp_clock_info.adjfreq = lan743x_ptpci_adjfreq;
 ptp->ptp_clock_info.adjtime = lan743x_ptpci_adjtime;
 ptp->ptp_clock_info.gettime64 = lan743x_ptpci_gettime64;
 ptp->ptp_clock_info.getcrosststamp = ((void*)0);
 ptp->ptp_clock_info.settime64 = lan743x_ptpci_settime64;
 ptp->ptp_clock_info.enable = lan743x_ptpci_enable;
 ptp->ptp_clock_info.do_aux_work = lan743x_ptpci_do_aux_work;
 ptp->ptp_clock_info.verify = ((void*)0);

 ptp->ptp_clock = ptp_clock_register(&ptp->ptp_clock_info,
         &adapter->pdev->dev);

 if (IS_ERR(ptp->ptp_clock)) {
  netif_err(adapter, ifup, adapter->netdev,
     "ptp_clock_register failed\n");
  goto done;
 }
 ptp->flags |= PTP_FLAG_PTP_CLOCK_REGISTERED;
 netif_info(adapter, ifup, adapter->netdev,
     "successfully registered ptp clock\n");

 return 0;
done:
 lan743x_ptp_close(adapter);
 return ret;
}
