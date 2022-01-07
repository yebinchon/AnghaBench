
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgx_event_cb {int dummy; } ;
struct lmac {struct cgx_event_cb event_cb; } ;
struct cgx {int dummy; } ;


 int ENODEV ;
 struct lmac* lmac_pdata (int,struct cgx*) ;

int cgx_lmac_evh_register(struct cgx_event_cb *cb, void *cgxd, int lmac_id)
{
 struct cgx *cgx = cgxd;
 struct lmac *lmac;

 lmac = lmac_pdata(lmac_id, cgx);
 if (!lmac)
  return -ENODEV;

 lmac->event_cb = *cb;

 return 0;
}
