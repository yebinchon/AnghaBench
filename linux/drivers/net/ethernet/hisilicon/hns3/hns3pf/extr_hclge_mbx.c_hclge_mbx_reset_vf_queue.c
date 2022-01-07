
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;
typedef int queue_id ;


 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int ) ;
 int hclge_reset_vf_queue (struct hclge_vport*,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void hclge_mbx_reset_vf_queue(struct hclge_vport *vport,
         struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 u16 queue_id;

 memcpy(&queue_id, &mbx_req->msg[2], sizeof(queue_id));

 hclge_reset_vf_queue(vport, queue_id);


 hclge_gen_resp_to_vf(vport, mbx_req, 0, ((void*)0), 0);
}
