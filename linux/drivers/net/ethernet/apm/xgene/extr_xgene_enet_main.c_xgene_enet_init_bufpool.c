
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_raw_desc16 {int m0; } ;
struct xgene_enet_desc_ring {int slots; int dst_ring_num; struct xgene_enet_raw_desc16* raw_desc16; } ;


 int FPQNUM ;
 int SET_VAL (int ,int) ;
 int STASH ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void xgene_enet_init_bufpool(struct xgene_enet_desc_ring *buf_pool)
{
 struct xgene_enet_raw_desc16 *raw_desc;
 int i;

 if (!buf_pool)
  return;

 for (i = 0; i < buf_pool->slots; i++) {
  raw_desc = &buf_pool->raw_desc16[i];


  raw_desc->m0 = cpu_to_le64(i |
    SET_VAL(FPQNUM, buf_pool->dst_ring_num) |
    SET_VAL(STASH, 3));
 }
}
