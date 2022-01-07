
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_1__* rq; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int xdp_prog; scalar_t__ pages; } ;


 int GFP_KERNEL ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __free_pages (int ,int ) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int get_a_page (TYPE_1__*,int ) ;
 struct bpf_prog* rtnl_dereference (int ) ;

__attribute__((used)) static void _free_receive_bufs(struct virtnet_info *vi)
{
 struct bpf_prog *old_prog;
 int i;

 for (i = 0; i < vi->max_queue_pairs; i++) {
  while (vi->rq[i].pages)
   __free_pages(get_a_page(&vi->rq[i], GFP_KERNEL), 0);

  old_prog = rtnl_dereference(vi->rq[i].xdp_prog);
  RCU_INIT_POINTER(vi->rq[i].xdp_prog, ((void*)0));
  if (old_prog)
   bpf_prog_put(old_prog);
 }
}
