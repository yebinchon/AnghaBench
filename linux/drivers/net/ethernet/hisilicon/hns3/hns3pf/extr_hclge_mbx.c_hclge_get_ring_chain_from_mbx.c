
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_ring_chain_node {struct hnae3_ring_chain_node* next; int int_gl_idx; void* tqp_index; int flag; } ;
struct TYPE_3__ {int * tqp; } ;
struct TYPE_4__ {TYPE_1__ kinfo; } ;
struct hclge_vport {TYPE_2__ nic; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HCLGE_MBX_RING_MAP_BASIC_MSG_NUM ;
 int HCLGE_MBX_RING_NODE_VARIABLE_NUM ;
 int HCLGE_MBX_VF_MSG_DATA_NUM ;
 int HNAE3_RING_GL_IDX_M ;
 int HNAE3_RING_GL_IDX_S ;
 int HNAE3_RING_TYPE_B ;
 int hclge_free_vector_ring_chain (struct hnae3_ring_chain_node*) ;
 void* hclge_get_queue_id (int ) ;
 int hnae3_set_bit (int ,int ,int) ;
 int hnae3_set_field (int ,int ,int ,size_t) ;
 struct hnae3_ring_chain_node* kzalloc (int,int ) ;

__attribute__((used)) static int hclge_get_ring_chain_from_mbx(
   struct hclge_mbx_vf_to_pf_cmd *req,
   struct hnae3_ring_chain_node *ring_chain,
   struct hclge_vport *vport)
{
 struct hnae3_ring_chain_node *cur_chain, *new_chain;
 int ring_num;
 int i;

 ring_num = req->msg[2];

 if (ring_num > ((HCLGE_MBX_VF_MSG_DATA_NUM -
  HCLGE_MBX_RING_MAP_BASIC_MSG_NUM) /
  HCLGE_MBX_RING_NODE_VARIABLE_NUM))
  return -ENOMEM;

 hnae3_set_bit(ring_chain->flag, HNAE3_RING_TYPE_B, req->msg[3]);
 ring_chain->tqp_index =
   hclge_get_queue_id(vport->nic.kinfo.tqp[req->msg[4]]);
 hnae3_set_field(ring_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
   HNAE3_RING_GL_IDX_S,
   req->msg[5]);

 cur_chain = ring_chain;

 for (i = 1; i < ring_num; i++) {
  new_chain = kzalloc(sizeof(*new_chain), GFP_KERNEL);
  if (!new_chain)
   goto err;

  hnae3_set_bit(new_chain->flag, HNAE3_RING_TYPE_B,
         req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
         HCLGE_MBX_RING_MAP_BASIC_MSG_NUM]);

  new_chain->tqp_index =
  hclge_get_queue_id(vport->nic.kinfo.tqp
   [req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
   HCLGE_MBX_RING_MAP_BASIC_MSG_NUM + 1]]);

  hnae3_set_field(new_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
    HNAE3_RING_GL_IDX_S,
    req->msg[HCLGE_MBX_RING_NODE_VARIABLE_NUM * i +
    HCLGE_MBX_RING_MAP_BASIC_MSG_NUM + 2]);

  cur_chain->next = new_chain;
  cur_chain = new_chain;
 }

 return 0;
err:
 hclge_free_vector_ring_chain(ring_chain);
 return -ENOMEM;
}
