
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_vport {int nic; } ;
struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;
typedef int queue_id ;
typedef int qid_in_pf ;


 int hclge_covert_handle_qid_global (int *,int ) ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclge_get_queue_id_in_pf(struct hclge_vport *vport,
        struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 u16 queue_id, qid_in_pf;
 u8 resp_data[2];

 memcpy(&queue_id, &mbx_req->msg[2], sizeof(queue_id));
 qid_in_pf = hclge_covert_handle_qid_global(&vport->nic, queue_id);
 memcpy(resp_data, &qid_in_pf, sizeof(qid_in_pf));

 return hclge_gen_resp_to_vf(vport, mbx_req, 0, resp_data, 2);
}
