
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdp_ctx {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 struct pdp_ctx* ERR_PTR (int ) ;
 size_t GTPA_LINK ;
 struct pdp_ctx* gtp_find_pdp_by_link (struct net*,struct nlattr**) ;

__attribute__((used)) static struct pdp_ctx *gtp_find_pdp(struct net *net, struct nlattr *nla[])
{
 struct pdp_ctx *pctx;

 if (nla[GTPA_LINK])
  pctx = gtp_find_pdp_by_link(net, nla);
 else
  pctx = ERR_PTR(-EINVAL);

 if (!pctx)
  pctx = ERR_PTR(-ENOENT);

 return pctx;
}
