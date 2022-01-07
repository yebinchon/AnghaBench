
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_dcb_info {size_t dcb_version; TYPE_1__* app_priority; } ;
struct port_info {struct port_dcb_info dcb; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct dcb_app {int selector; scalar_t__ protocol; scalar_t__ priority; } ;
struct adapter {int pdev_dev; } ;
struct TYPE_2__ {int sel_field; scalar_t__ user_prio_map; scalar_t__ protocolid; } ;


 int CXGB4_MAX_DCBX_APP_SUPPORTED ;
 size_t FW_PORT_DCB_VER_IEEE ;
 int dcb_ieee_delapp (struct net_device*,struct dcb_app*) ;
 int dcb_setapp (struct net_device*,struct dcb_app*) ;
 int * dcb_ver_array ;
 int dev_err (int ,char*,int ,int,scalar_t__,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static void cxgb4_dcb_cleanup_apps(struct net_device *dev)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = pi->adapter;
 struct port_dcb_info *dcb = &pi->dcb;
 struct dcb_app app;
 int i, err;


 app.priority = 0;

 for (i = 0; i < CXGB4_MAX_DCBX_APP_SUPPORTED; i++) {

  if (!dcb->app_priority[i].protocolid)
   break;

  app.protocol = dcb->app_priority[i].protocolid;

  if (dcb->dcb_version == FW_PORT_DCB_VER_IEEE) {
   app.priority = dcb->app_priority[i].user_prio_map;
   app.selector = dcb->app_priority[i].sel_field + 1;
   err = dcb_ieee_delapp(dev, &app);
  } else {
   app.selector = !!(dcb->app_priority[i].sel_field);
   err = dcb_setapp(dev, &app);
  }

  if (err) {
   dev_err(adap->pdev_dev,
    "Failed DCB Clear %s Application Priority: sel=%d, prot=%d, , err=%d\n",
    dcb_ver_array[dcb->dcb_version], app.selector,
    app.protocol, -err);
   break;
  }
 }
}
