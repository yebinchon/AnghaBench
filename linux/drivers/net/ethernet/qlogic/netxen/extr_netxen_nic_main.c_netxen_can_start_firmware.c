
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;


 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_CRB_DEV_REF_COUNT ;
 int NX_CRB_DEV_STATE ;
 int NX_DEV_INITALIZING ;
 int NX_MAX_PCI_FUNC ;
 scalar_t__ netxen_api_lock (struct netxen_adapter*) ;
 int netxen_api_unlock (struct netxen_adapter*) ;
 int nx_incr_dev_ref_cnt (struct netxen_adapter*) ;

__attribute__((used)) static int
netxen_can_start_firmware(struct netxen_adapter *adapter)
{
 int count;
 int can_start = 0;

 if (netxen_api_lock(adapter)) {
  nx_incr_dev_ref_cnt(adapter);
  return -1;
 }

 count = NXRD32(adapter, NX_CRB_DEV_REF_COUNT);

 if ((count < 0) || (count >= NX_MAX_PCI_FUNC))
  count = 0;

 if (count == 0) {
  can_start = 1;
  NXWR32(adapter, NX_CRB_DEV_STATE, NX_DEV_INITALIZING);
 }

 NXWR32(adapter, NX_CRB_DEV_REF_COUNT, ++count);

 netxen_api_unlock(adapter);

 return can_start;
}
