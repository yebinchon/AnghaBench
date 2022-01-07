
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_spq {int chain; int comp_bitmap_idx; int p_comp_bitmap; } ;
struct qed_hwfn {struct qed_spq* p_spq; } ;
typedef int __le16 ;


 int SPQ_RING_SIZE ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int,int ) ;
 int le16_to_cpu (int ) ;
 int qed_chain_return_produced (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void qed_spq_comp_bmap_update(struct qed_hwfn *p_hwfn, __le16 echo)
{
 u16 pos = le16_to_cpu(echo) % SPQ_RING_SIZE;
 struct qed_spq *p_spq = p_hwfn->p_spq;

 __set_bit(pos, p_spq->p_comp_bitmap);
 while (test_bit(p_spq->comp_bitmap_idx,
   p_spq->p_comp_bitmap)) {
  __clear_bit(p_spq->comp_bitmap_idx,
       p_spq->p_comp_bitmap);
  p_spq->comp_bitmap_idx++;
  qed_chain_return_produced(&p_spq->chain);
 }
}
