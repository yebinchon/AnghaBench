
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;
struct bnxt_dl {struct bnxt* bp; } ;
struct bnxt {int dummy; } ;


 scalar_t__ devlink_priv (struct devlink*) ;

__attribute__((used)) static inline struct bnxt *bnxt_get_bp_from_dl(struct devlink *dl)
{
 return ((struct bnxt_dl *)devlink_priv(dl))->bp;
}
