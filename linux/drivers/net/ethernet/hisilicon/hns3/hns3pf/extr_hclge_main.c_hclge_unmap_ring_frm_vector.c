
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_ring_chain_node {int dummy; } ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int state; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_STATE_RST_HANDLING ;
 int dev_err (int *,char*,int,...) ;
 int hclge_bind_ring_with_vector (struct hclge_vport*,int,int,struct hnae3_ring_chain_node*) ;
 int hclge_get_vector_index (struct hclge_dev*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hclge_unmap_ring_frm_vector(struct hnae3_handle *handle, int vector,
           struct hnae3_ring_chain_node *ring_chain)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int vector_id, ret;

 if (test_bit(HCLGE_STATE_RST_HANDLING, &hdev->state))
  return 0;

 vector_id = hclge_get_vector_index(hdev, vector);
 if (vector_id < 0) {
  dev_err(&handle->pdev->dev,
   "Get vector index fail. ret =%d\n", vector_id);
  return vector_id;
 }

 ret = hclge_bind_ring_with_vector(vport, vector_id, 0, ring_chain);
 if (ret)
  dev_err(&handle->pdev->dev,
   "Unmap ring from vector fail. vectorid=%d, ret =%d\n",
   vector_id, ret);

 return ret;
}
