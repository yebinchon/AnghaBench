
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp6000_pcie {int bar_waiters; } ;


 int EAGAIN ;
 int find_unused_bar_and_lock (struct nfp6000_pcie*,int ,int ,int ,int ,size_t,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
nfp_wait_for_bar(struct nfp6000_pcie *nfp, int *barnum,
   u32 tgt, u32 act, u32 tok, u64 offset, size_t size, int width)
{
 return wait_event_interruptible(nfp->bar_waiters,
  (*barnum = find_unused_bar_and_lock(nfp, tgt, act, tok,
          offset, size, width))
     != -EAGAIN);
}
