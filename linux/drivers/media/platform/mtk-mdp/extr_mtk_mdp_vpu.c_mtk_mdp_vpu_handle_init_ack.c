
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_vpu {int inst_addr; int pdev; struct mdp_process_vsi* vsi; } ;
struct mdp_process_vsi {int dummy; } ;
struct mdp_ipi_comm_ack {int vpu_inst_addr; scalar_t__ ap_inst; } ;


 scalar_t__ vpu_mapping_dm_addr (int ,int ) ;

__attribute__((used)) static void mtk_mdp_vpu_handle_init_ack(struct mdp_ipi_comm_ack *msg)
{
 struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
     (unsigned long)msg->ap_inst;


 vpu->vsi = (struct mdp_process_vsi *)
   vpu_mapping_dm_addr(vpu->pdev, msg->vpu_inst_addr);
 vpu->inst_addr = msg->vpu_inst_addr;
}
