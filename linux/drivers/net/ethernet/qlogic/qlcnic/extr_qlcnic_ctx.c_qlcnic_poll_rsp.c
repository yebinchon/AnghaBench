
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_CDRP_CRB_OFFSET ;
 int QLCNIC_CDRP_IS_RSP (int ) ;
 int QLCNIC_CDRP_RSP_TIMEOUT ;
 int QLCNIC_OS_CRB_RETRY_COUNT ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int mdelay (int) ;

__attribute__((used)) static u32
qlcnic_poll_rsp(struct qlcnic_adapter *adapter)
{
 u32 rsp;
 int timeout = 0, err = 0;

 do {

  mdelay(1);

  if (++timeout > QLCNIC_OS_CRB_RETRY_COUNT)
   return QLCNIC_CDRP_RSP_TIMEOUT;

  rsp = QLCRD32(adapter, QLCNIC_CDRP_CRB_OFFSET, &err);
 } while (!QLCNIC_CDRP_IS_RSP(rsp));

 return rsp;
}
