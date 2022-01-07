
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_adapter {int dummy; } ;


 int NXRD32 (struct netxen_adapter*,int ) ;
 int NX_CDRP_CRB_OFFSET ;
 int NX_CDRP_IS_RSP (int ) ;
 int NX_CDRP_RSP_OK ;
 int NX_CDRP_RSP_TIMEOUT ;
 int NX_OS_CRB_RETRY_COUNT ;
 int msleep (int) ;

__attribute__((used)) static u32
netxen_poll_rsp(struct netxen_adapter *adapter)
{
 u32 rsp = NX_CDRP_RSP_OK;
 int timeout = 0;

 do {

  msleep(1);

  if (++timeout > NX_OS_CRB_RETRY_COUNT)
   return NX_CDRP_RSP_TIMEOUT;

  rsp = NXRD32(adapter, NX_CDRP_CRB_OFFSET);
 } while (!NX_CDRP_IS_RSP(rsp));

 return rsp;
}
