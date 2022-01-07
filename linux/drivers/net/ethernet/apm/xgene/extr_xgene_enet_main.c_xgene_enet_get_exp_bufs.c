
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {size_t exp_buf_tail; int slots; int * exp_bufs; } ;
typedef int __le64 ;


 size_t MAX_EXP_BUFFS ;
 int memset (int *,int ,int) ;

__attribute__((used)) static __le64 *xgene_enet_get_exp_bufs(struct xgene_enet_desc_ring *ring)
{
 __le64 *exp_bufs;

 exp_bufs = &ring->exp_bufs[ring->exp_buf_tail * MAX_EXP_BUFFS];
 memset(exp_bufs, 0, sizeof(__le64) * MAX_EXP_BUFFS);
 ring->exp_buf_tail = (ring->exp_buf_tail + 1) & ((ring->slots / 2) - 1);

 return exp_bufs;
}
