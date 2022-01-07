
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vf_data_storage {int pf_vlan; int pf_qos; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int up; } ;
struct ixgbe_adapter {int dcbx_cap; int num_vfs; struct vf_data_storage* vfinfo; int default_up; TYPE_1__ fcoe; } ;
struct dcb_app {scalar_t__ selector; scalar_t__ protocol; int priority; } ;


 int BIT (int ) ;
 int DCB_CAP_DCBX_VER_IEEE ;
 int EINVAL ;
 scalar_t__ ETH_P_FCOE ;
 scalar_t__ IEEE_8021QAZ_APP_SEL_ETHERTYPE ;
 int dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 int dcb_ieee_setapp (struct net_device*,struct dcb_app*) ;
 int ixgbe_dcbnl_devreset (struct net_device*) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int ,int ,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_dcbnl_ieee_setapp(struct net_device *dev,
       struct dcb_app *app)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 int err;

 if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
  return -EINVAL;

 err = dcb_ieee_setapp(dev, app);
 if (err)
  return err;
 if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
     app->protocol == 0) {
  int vf;

  adapter->default_up = app->priority;

  for (vf = 0; vf < adapter->num_vfs; vf++) {
   struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];

   if (!vfinfo->pf_qos)
    ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
      app->priority, vf);
  }
 }

 return 0;
}
