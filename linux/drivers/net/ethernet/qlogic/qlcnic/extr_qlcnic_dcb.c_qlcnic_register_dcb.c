
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {scalar_t__ state; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {struct qlcnic_dcb* dcb; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct qlcnic_dcb* kzalloc (int,int ) ;
 int qlcnic_set_dcb_ops (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

int qlcnic_register_dcb(struct qlcnic_adapter *adapter)
{
 struct qlcnic_dcb *dcb;

 if (qlcnic_sriov_vf_check(adapter))
  return 0;

 dcb = kzalloc(sizeof(struct qlcnic_dcb), GFP_ATOMIC);
 if (!dcb)
  return -ENOMEM;

 adapter->dcb = dcb;
 dcb->adapter = adapter;
 qlcnic_set_dcb_ops(adapter);
 dcb->state = 0;

 return 0;
}
