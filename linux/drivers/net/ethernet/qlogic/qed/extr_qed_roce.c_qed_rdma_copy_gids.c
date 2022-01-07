
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union qed_gid {int dummy; } qed_gid ;
typedef size_t u32 ;
struct TYPE_4__ {int * dwords; int ipv4_addr; } ;
struct TYPE_3__ {int * dwords; int ipv4_addr; } ;
struct qed_rdma_qp {scalar_t__ roce_mode; TYPE_2__ dgid; TYPE_1__ sgid; } ;
typedef int __le32 ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ ROCE_V2_IPV4 ;
 int cpu_to_le32 (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void qed_rdma_copy_gids(struct qed_rdma_qp *qp, __le32 *src_gid,
          __le32 *dst_gid)
{
 u32 i;

 if (qp->roce_mode == ROCE_V2_IPV4) {



  memset(src_gid, 0, sizeof(union qed_gid));
  memset(dst_gid, 0, sizeof(union qed_gid));
  src_gid[3] = cpu_to_le32(qp->sgid.ipv4_addr);
  dst_gid[3] = cpu_to_le32(qp->dgid.ipv4_addr);
 } else {

  for (i = 0; i < ARRAY_SIZE(qp->sgid.dwords); i++) {
   src_gid[i] = cpu_to_le32(qp->sgid.dwords[i]);
   dst_gid[i] = cpu_to_le32(qp->dgid.dwords[i]);
  }
 }
}
