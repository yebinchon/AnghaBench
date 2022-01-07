
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnx2x_virtf {int abs_vfid; } ;
struct TYPE_2__ {int func_id; } ;
struct bnx2x_vf_queue {int sp_initialized; int cid; TYPE_1__ sp_obj; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int BNX2X_Q_TYPE_HAS_RX ;
 int BNX2X_Q_TYPE_HAS_TX ;
 int DP (int ,char*,int ,int ,int ) ;
 int FW_VF_HANDLE (int ) ;
 int bnx2x_init_queue_obj (struct bnx2x*,TYPE_1__*,int ,int *,int,int ,int ,int ,unsigned long) ;
 int bnx2x_vf_sp (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_sp_map (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int q_data ;
 int set_bit (int ,unsigned long*) ;
 int vfq_cl_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;

__attribute__((used)) static void bnx2x_vfq_init(struct bnx2x *bp, struct bnx2x_virtf *vf,
      struct bnx2x_vf_queue *q)
{
 u8 cl_id = vfq_cl_id(vf, q);
 u8 func_id = FW_VF_HANDLE(vf->abs_vfid);
 unsigned long q_type = 0;

 set_bit(BNX2X_Q_TYPE_HAS_TX, &q_type);
 set_bit(BNX2X_Q_TYPE_HAS_RX, &q_type);


 bnx2x_init_queue_obj(bp, &q->sp_obj,
        cl_id, &q->cid, 1, func_id,
        bnx2x_vf_sp(bp, vf, q_data),
        bnx2x_vf_sp_map(bp, vf, q_data),
        q_type);


 q->sp_initialized = 0;

 DP(BNX2X_MSG_IOV,
    "initialized vf %d's queue object. func id set to %d. cid set to 0x%x\n",
    vf->abs_vfid, q->sp_obj.func_id, q->cid);
}
