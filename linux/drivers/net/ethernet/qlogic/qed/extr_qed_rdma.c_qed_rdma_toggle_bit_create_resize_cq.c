
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bitmap; } ;
struct qed_rdma_info {int lock; TYPE_1__ toggle_bits; int proto; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;
typedef enum qed_rdma_toggle_bit { ____Placeholder_qed_rdma_toggle_bit } qed_rdma_toggle_bit ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int QED_MSG_RDMA ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_change_bit (int,int ) ;

__attribute__((used)) static enum qed_rdma_toggle_bit
qed_rdma_toggle_bit_create_resize_cq(struct qed_hwfn *p_hwfn, u16 icid)
{
 struct qed_rdma_info *p_info = p_hwfn->p_rdma_info;
 enum qed_rdma_toggle_bit toggle_bit;
 u32 bmap_id;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", icid);




 bmap_id = icid - qed_cxt_get_proto_cid_start(p_hwfn, p_info->proto);

 spin_lock_bh(&p_info->lock);
 toggle_bit = !test_and_change_bit(bmap_id,
       p_info->toggle_bits.bitmap);
 spin_unlock_bh(&p_info->lock);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QED_RDMA_TOGGLE_BIT_= %d\n",
     toggle_bit);

 return toggle_bit;
}
