
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct nfp_rtsym {int dummy; } ;
struct nfp_cpp {int dummy; } ;
struct nfp_abm_link {int queue_base; int id; TYPE_2__* abm; } ;
struct TYPE_4__ {TYPE_1__* app; } ;
struct TYPE_3__ {struct nfp_cpp* cpp; } ;


 unsigned int NFP_NET_MAX_RX_RINGS ;
 int __nfp_rtsym_readl (struct nfp_cpp*,struct nfp_rtsym const*,int,int ,unsigned int,unsigned int*) ;
 int __nfp_rtsym_readq (struct nfp_cpp*,struct nfp_rtsym const*,int,int ,unsigned int,unsigned int*) ;
 int nfp_err (struct nfp_cpp*,char*,int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
nfp_abm_ctrl_stat(struct nfp_abm_link *alink, const struct nfp_rtsym *sym,
    unsigned int stride, unsigned int offset, unsigned int band,
    unsigned int queue, bool is_u64, u64 *res)
{
 struct nfp_cpp *cpp = alink->abm->app->cpp;
 u64 val, sym_offset;
 unsigned int qid;
 u32 val32;
 int err;

 qid = band * NFP_NET_MAX_RX_RINGS + alink->queue_base + queue;

 sym_offset = qid * stride + offset;
 if (is_u64)
  err = __nfp_rtsym_readq(cpp, sym, 3, 0, sym_offset, &val);
 else
  err = __nfp_rtsym_readl(cpp, sym, 3, 0, sym_offset, &val32);
 if (err) {
  nfp_err(cpp, "RED offload reading stat failed on vNIC %d band %d queue %d (+ %d)\n",
   alink->id, band, queue, alink->queue_base);
  return err;
 }

 *res = is_u64 ? val : val32;
 return 0;
}
