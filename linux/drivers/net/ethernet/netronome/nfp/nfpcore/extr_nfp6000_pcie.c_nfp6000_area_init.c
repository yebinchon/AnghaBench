
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct nfp_cpp_area {int dummy; } ;
struct TYPE_2__ {scalar_t__ read; scalar_t__ write; scalar_t__ bar; } ;
struct nfp6000_area_priv {unsigned long long offset; unsigned long size; int resource; void* token; void* action; void* target; int * bar; int refcnt; TYPE_1__ width; } ;


 int EINVAL ;
 int NFP_CPP_ID (void*,void*,void*) ;
 void* NFP_CPP_ID_ACTION_of (void*) ;
 void* NFP_CPP_ID_TARGET_of (void*) ;
 void* NFP_CPP_ID_TOKEN_of (void*) ;
 scalar_t__ PULL_WIDTH (int) ;
 scalar_t__ PUSH_WIDTH (int) ;
 int atomic_set (int *,int ) ;
 int memset (int *,int ,int) ;
 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;
 int nfp_target_pushpull (int ,unsigned long long) ;

__attribute__((used)) static int nfp6000_area_init(struct nfp_cpp_area *area, u32 dest,
        unsigned long long address, unsigned long size)
{
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);
 u32 target = NFP_CPP_ID_TARGET_of(dest);
 u32 action = NFP_CPP_ID_ACTION_of(dest);
 u32 token = NFP_CPP_ID_TOKEN_of(dest);
 int pp;

 pp = nfp_target_pushpull(NFP_CPP_ID(target, action, token), address);
 if (pp < 0)
  return pp;

 priv->width.read = PUSH_WIDTH(pp);
 priv->width.write = PULL_WIDTH(pp);
 if (priv->width.read > 0 &&
     priv->width.write > 0 &&
     priv->width.read != priv->width.write) {
  return -EINVAL;
 }

 if (priv->width.read > 0)
  priv->width.bar = priv->width.read;
 else
  priv->width.bar = priv->width.write;

 atomic_set(&priv->refcnt, 0);
 priv->bar = ((void*)0);

 priv->target = target;
 priv->action = action;
 priv->token = token;
 priv->offset = address;
 priv->size = size;
 memset(&priv->resource, 0, sizeof(priv->resource));

 return 0;
}
