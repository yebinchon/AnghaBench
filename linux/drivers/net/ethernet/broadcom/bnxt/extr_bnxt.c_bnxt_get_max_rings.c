
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int ENOMEM ;
 int _bnxt_get_max_rings (struct bnxt*,int*,int*,int*) ;
 int bnxt_trim_rings (struct bnxt*,int*,int*,int,int) ;

int bnxt_get_max_rings(struct bnxt *bp, int *max_rx, int *max_tx, bool shared)
{
 int rx, tx, cp;

 _bnxt_get_max_rings(bp, &rx, &tx, &cp);
 *max_rx = rx;
 *max_tx = tx;
 if (!rx || !tx || !cp)
  return -ENOMEM;

 return bnxt_trim_rings(bp, max_rx, max_tx, cp, shared);
}
