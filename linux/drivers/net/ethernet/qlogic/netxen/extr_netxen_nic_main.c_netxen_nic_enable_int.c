
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int crb_intr_mask; struct netxen_adapter* adapter; } ;
struct netxen_adapter {int tgt_mask_reg; } ;


 int NETXEN_IS_MSI_FAMILY (struct netxen_adapter*) ;
 int NXWRIO (struct netxen_adapter*,int ,int) ;

__attribute__((used)) static inline void netxen_nic_enable_int(struct nx_host_sds_ring *sds_ring)
{
 struct netxen_adapter *adapter = sds_ring->adapter;

 NXWRIO(adapter, sds_ring->crb_intr_mask, 0x1);

 if (!NETXEN_IS_MSI_FAMILY(adapter))
  NXWRIO(adapter, adapter->tgt_mask_reg, 0xfbff);
}
