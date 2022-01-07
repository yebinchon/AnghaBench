
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;


 int EIO ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_CRB_DEV_REF_COUNT ;
 int NX_CRB_DEV_STATE ;
 int NX_DEV_COLD ;
 int NX_DEV_FAILED ;
 int WARN_ON (int) ;
 scalar_t__ netxen_api_lock (struct netxen_adapter*) ;
 int netxen_api_unlock (struct netxen_adapter*) ;

__attribute__((used)) static int
nx_decr_dev_ref_cnt(struct netxen_adapter *adapter)
{
 int count, state;
 if (netxen_api_lock(adapter))
  return -EIO;

 count = NXRD32(adapter, NX_CRB_DEV_REF_COUNT);
 WARN_ON(count == 0);

 NXWR32(adapter, NX_CRB_DEV_REF_COUNT, --count);
 state = NXRD32(adapter, NX_CRB_DEV_STATE);

 if (count == 0 && state != NX_DEV_FAILED)
  NXWR32(adapter, NX_CRB_DEV_STATE, NX_DEV_COLD);

 netxen_api_unlock(adapter);
 return count;
}
