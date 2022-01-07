
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;


 int EIO ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_CRB_DEV_REF_COUNT ;
 scalar_t__ netxen_api_lock (struct netxen_adapter*) ;
 int netxen_api_unlock (struct netxen_adapter*) ;

__attribute__((used)) static int
nx_incr_dev_ref_cnt(struct netxen_adapter *adapter)
{
 int count;
 if (netxen_api_lock(adapter))
  return -EIO;

 count = NXRD32(adapter, NX_CRB_DEV_REF_COUNT);

 NXWR32(adapter, NX_CRB_DEV_REF_COUNT, ++count);

 netxen_api_unlock(adapter);
 return count;
}
