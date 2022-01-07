
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int hclge_free_vector (struct hclge_dev*,int) ;
 int hclge_get_vector_index (struct hclge_dev*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_put_vector(struct hnae3_handle *handle, int vector)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int vector_id;

 vector_id = hclge_get_vector_index(hdev, vector);
 if (vector_id < 0) {
  dev_err(&hdev->pdev->dev,
   "Get vector index fail. vector_id =%d\n", vector_id);
  return vector_id;
 }

 hclge_free_vector(hdev, vector_id);

 return 0;
}
