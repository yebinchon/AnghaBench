
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;
struct bnxt_dl {struct bnxt* bp; } ;
struct bnxt {struct devlink* dl; } ;


 struct bnxt_dl* devlink_priv (struct devlink*) ;

__attribute__((used)) static inline void bnxt_link_bp_to_dl(struct bnxt *bp, struct devlink *dl)
{
 bp->dl = dl;


 if (dl) {
  struct bnxt_dl *bp_dl = devlink_priv(dl);

  bp_dl->bp = bp;
 }
}
