
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_2__ {int rx; } ;
struct ar5416_desc {int ds_ctl1; TYPE_1__ u; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_BufLen ;
 int AR_RxIntrReq ;
 int ATH9K_RXDESC_INTREQ ;
 int memset (int *,int ,int) ;

void ath9k_hw_setuprxdesc(struct ath_hw *ah, struct ath_desc *ds,
     u32 size, u32 flags)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 ads->ds_ctl1 = size & AR_BufLen;
 if (flags & ATH9K_RXDESC_INTREQ)
  ads->ds_ctl1 |= AR_RxIntrReq;

 memset(&ads->u.rx, 0, sizeof(ads->u.rx));
}
