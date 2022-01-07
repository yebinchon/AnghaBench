
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int rss_conf_obj; } ;


 int bnx2x_rss (struct bnx2x*,int *,int,int) ;

__attribute__((used)) static inline int bnx2x_config_rss_eth(struct bnx2x *bp, bool config_hash)
{
 return bnx2x_rss(bp, &bp->rss_conf_obj, config_hash, 1);
}
