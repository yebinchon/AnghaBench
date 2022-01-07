
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int back; int vport_id; } ;
struct hclge_promisc_param {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {scalar_t__* msg; } ;


 int hclge_cmd_set_promisc_mode (int ,struct hclge_promisc_param*) ;
 int hclge_promisc_param_init (struct hclge_promisc_param*,int,int,int,int ) ;

__attribute__((used)) static int hclge_set_vf_promisc_mode(struct hclge_vport *vport,
         struct hclge_mbx_vf_to_pf_cmd *req)
{
 bool en_bc = req->msg[1] ? 1 : 0;
 struct hclge_promisc_param param;


 hclge_promisc_param_init(&param, 0, 0, en_bc, vport->vport_id);
 return hclge_cmd_set_promisc_mode(vport->back, &param);
}
