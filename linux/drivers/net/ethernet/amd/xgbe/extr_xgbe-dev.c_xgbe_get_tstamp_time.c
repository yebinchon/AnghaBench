
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct xgbe_prv_data {int dummy; } ;


 int MAC_STNR ;
 int MAC_STSR ;
 scalar_t__ NSEC_PER_SEC ;
 scalar_t__ XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static u64 xgbe_get_tstamp_time(struct xgbe_prv_data *pdata)
{
 u64 nsec;

 nsec = XGMAC_IOREAD(pdata, MAC_STSR);
 nsec *= NSEC_PER_SEC;
 nsec += XGMAC_IOREAD(pdata, MAC_STNR);

 return nsec;
}
