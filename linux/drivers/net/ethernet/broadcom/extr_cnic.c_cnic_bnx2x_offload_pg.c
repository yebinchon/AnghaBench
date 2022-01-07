
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4_kwq_offload_pg {int host_opaque; } ;
struct l4_kcq {int op_code; int pg_cid; int pg_host_opaque; } ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct cnic_dev {int dummy; } ;
typedef int kcqe ;


 int CNIC_ULP_L4 ;
 int L4_KCQE_OPCODE_VALUE_OFFLOAD_PG ;
 int cnic_reply_bnx2x_kcqes (struct cnic_dev*,int ,struct kcqe**,int) ;
 int memset (struct l4_kcq*,int ,int) ;

__attribute__((used)) static int cnic_bnx2x_offload_pg(struct cnic_dev *dev, struct kwqe *kwqe)
{
 struct l4_kwq_offload_pg *req = (struct l4_kwq_offload_pg *) kwqe;
 struct l4_kcq kcqe;
 struct kcqe *cqes[1];

 memset(&kcqe, 0, sizeof(kcqe));
 kcqe.pg_host_opaque = req->host_opaque;
 kcqe.pg_cid = req->host_opaque;
 kcqe.op_code = L4_KCQE_OPCODE_VALUE_OFFLOAD_PG;
 cqes[0] = (struct kcqe *) &kcqe;
 cnic_reply_bnx2x_kcqes(dev, CNIC_ULP_L4, cqes, 1);
 return 0;
}
