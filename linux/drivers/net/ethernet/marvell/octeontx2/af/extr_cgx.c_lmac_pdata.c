
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lmac {int dummy; } ;
struct cgx {struct lmac** lmac_idmap; } ;


 size_t MAX_LMAC_PER_CGX ;

__attribute__((used)) static inline struct lmac *lmac_pdata(u8 lmac_id, struct cgx *cgx)
{
 if (!cgx || lmac_id >= MAX_LMAC_PER_CGX)
  return ((void*)0);

 return cgx->lmac_idmap[lmac_id];
}
