
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct TYPE_9__ {int max_adj; int getcrosststamp; int name; } ;
struct e1000_adapter {int flags; int * ptp_clock; TYPE_3__* pdev; TYPE_4__ ptp_clock_info; int systim_overflow_work; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int perm_addr; } ;


 int E1000_SYSTIM_OVERFLOW_PERIOD ;
 int E1000_TSYNCRXCTL_SYSCFI ;
 int FLAG_HAS_HW_TIMESTAMP ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int TSYNCRXCTL ;
 int X86_FEATURE_ART ;
 scalar_t__ boot_cpu_has (int ) ;






 int e1000e_phc_getcrosststamp ;
 TYPE_4__ e1000e_ptp_clock_info ;
 int e1000e_systim_overflow_work ;
 int e_err (char*) ;
 int e_info (char*) ;
 int er32 (int ) ;
 int * ptp_clock_register (TYPE_4__*,int *) ;
 int schedule_delayed_work (int *,int ) ;
 int snprintf (int ,int,char*,int ) ;

void e1000e_ptp_init(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 adapter->ptp_clock = ((void*)0);

 if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
  return;

 adapter->ptp_clock_info = e1000e_ptp_clock_info;

 snprintf(adapter->ptp_clock_info.name,
   sizeof(adapter->ptp_clock_info.name), "%pm",
   adapter->netdev->perm_addr);

 switch (hw->mac.type) {
 case 131:
 case 129:
 case 128:
 case 130:
  if ((hw->mac.type < 129) ||
      (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
   adapter->ptp_clock_info.max_adj = 24000000 - 1;
   break;
  }

 case 133:
 case 132:
  adapter->ptp_clock_info.max_adj = 600000000 - 1;
  break;
 default:
  break;
 }
 INIT_DELAYED_WORK(&adapter->systim_overflow_work,
     e1000e_systim_overflow_work);

 schedule_delayed_work(&adapter->systim_overflow_work,
         E1000_SYSTIM_OVERFLOW_PERIOD);

 adapter->ptp_clock = ptp_clock_register(&adapter->ptp_clock_info,
      &adapter->pdev->dev);
 if (IS_ERR(adapter->ptp_clock)) {
  adapter->ptp_clock = ((void*)0);
  e_err("ptp_clock_register failed\n");
 } else if (adapter->ptp_clock) {
  e_info("registered PHC clock\n");
 }
}
