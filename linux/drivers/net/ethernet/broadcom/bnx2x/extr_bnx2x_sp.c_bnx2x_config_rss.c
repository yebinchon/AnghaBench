
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_raw_obj {int (* wait_comp ) (struct bnx2x*,struct bnx2x_raw_obj*) ;int (* clear_pending ) (struct bnx2x_raw_obj*) ;int (* set_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_rss_config_obj {int (* config_rss ) (struct bnx2x*,struct bnx2x_config_rss_params*) ;struct bnx2x_raw_obj raw; } ;
struct bnx2x_config_rss_params {int ramrod_flags; struct bnx2x_rss_config_obj* rss_obj; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int ) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int stub1 (struct bnx2x_raw_obj*) ;
 int stub2 (struct bnx2x*,struct bnx2x_config_rss_params*) ;
 int stub3 (struct bnx2x_raw_obj*) ;
 int stub4 (struct bnx2x*,struct bnx2x_raw_obj*) ;
 scalar_t__ test_bit (int ,int *) ;

int bnx2x_config_rss(struct bnx2x *bp,
       struct bnx2x_config_rss_params *p)
{
 int rc;
 struct bnx2x_rss_config_obj *o = p->rss_obj;
 struct bnx2x_raw_obj *r = &o->raw;


 if (test_bit(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
  DP(BNX2X_MSG_SP, "Not configuring RSS ramrod_flags=%lx\n",
     p->ramrod_flags);
  return 0;
 }

 r->set_pending(r);

 rc = o->config_rss(bp, p);
 if (rc < 0) {
  r->clear_pending(r);
  return rc;
 }

 if (test_bit(RAMROD_COMP_WAIT, &p->ramrod_flags))
  rc = r->wait_comp(bp, r);

 return rc;
}
