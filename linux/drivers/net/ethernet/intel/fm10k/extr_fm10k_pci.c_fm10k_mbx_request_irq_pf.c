
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int name; } ;
struct msix_entry {int entry; int vector; } ;
struct TYPE_3__ {int (* register_handlers ) (TYPE_2__*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mbx; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct net_device* netdev; struct msix_entry* msix_entries; } ;


 int FM10K_EIMR ;
 int FM10K_EIMR_ENABLE (int ) ;
 int FM10K_INT_MAP (int ) ;
 int FM10K_INT_MAP_IMMEDIATE ;
 int FM10K_INT_MAP_TIMER0 ;
 int FM10K_ITR (int) ;
 int FM10K_ITR_ENABLE ;
 size_t FM10K_MBX_VECTOR ;
 int FUM_FAULT ;
 int MAILBOX ;
 int MAXHOLDTIME ;
 int PCA_FAULT ;
 int SRAMERROR ;
 int SWITCHNOTREADY ;
 int SWITCHREADY ;
 int VFLR ;
 int fm10k_int_mailbox ;
 int fm10k_int_max_hold_time ;
 int fm10k_int_pcie_fault ;
 int fm10k_int_sram ;
 int fm10k_int_switch_up_down ;
 int fm10k_int_vflr ;
 int fm10k_msix_mbx_pf ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 int netif_err (struct fm10k_intfc*,int ,struct net_device*,char*,int) ;
 int pf_mbx_data ;
 int probe ;
 int request_irq (int ,int ,int ,int ,struct fm10k_intfc*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int fm10k_mbx_request_irq_pf(struct fm10k_intfc *interface)
{
 struct msix_entry *entry = &interface->msix_entries[FM10K_MBX_VECTOR];
 struct net_device *dev = interface->netdev;
 struct fm10k_hw *hw = &interface->hw;
 int err;


 u32 mbx_itr = entry->entry | FM10K_INT_MAP_TIMER0;
 u32 other_itr = entry->entry | FM10K_INT_MAP_IMMEDIATE;


 err = hw->mbx.ops.register_handlers(&hw->mbx, pf_mbx_data);
 if (err)
  return err;


 err = request_irq(entry->vector, fm10k_msix_mbx_pf, 0,
     dev->name, interface);
 if (err) {
  netif_err(interface, probe, dev,
     "request_irq for msix_mbx failed: %d\n", err);
  return err;
 }


 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_pcie_fault), other_itr);
 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_switch_up_down), other_itr);
 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_sram), other_itr);
 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_max_hold_time), other_itr);
 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_vflr), other_itr);


 fm10k_write_reg(hw, FM10K_INT_MAP(fm10k_int_mailbox), mbx_itr);


 fm10k_write_reg(hw, FM10K_EIMR, FM10K_EIMR_ENABLE(PCA_FAULT) |
     FM10K_EIMR_ENABLE(FUM_FAULT) |
     FM10K_EIMR_ENABLE(MAILBOX) |
     FM10K_EIMR_ENABLE(SWITCHREADY) |
     FM10K_EIMR_ENABLE(SWITCHNOTREADY) |
     FM10K_EIMR_ENABLE(SRAMERROR) |
     FM10K_EIMR_ENABLE(VFLR) |
     FM10K_EIMR_ENABLE(MAXHOLDTIME));


 fm10k_write_reg(hw, FM10K_ITR(entry->entry), FM10K_ITR_ENABLE);

 return 0;
}
