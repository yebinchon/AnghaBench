
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_hw_error {int msg; int int_msk; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_ROCEE_OVF_ERR_INT_MASK ;
 int HCLGE_ROCEE_OVF_ERR_TYPE_MASK ;
 int HCLGE_ROCEE_PF_RAS_INT_CMD ;
 int dev_err (struct device*,char*,int,...) ;
 int hclge_cmd_query_error (struct hclge_dev*,struct hclge_desc*,int ,int ) ;
 struct hclge_hw_error* hclge_rocee_qmm_ovf_err_int ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_log_rocee_ovf_error(struct hclge_dev *hdev)
{
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc[2];
 int ret;


 ret = hclge_cmd_query_error(hdev, &desc[0], HCLGE_ROCEE_PF_RAS_INT_CMD,
        0);
 if (ret) {
  dev_err(dev, "failed(%d) to query ROCEE OVF error sts\n", ret);
  return ret;
 }


 if (le32_to_cpu(desc[0].data[0]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
  const struct hclge_hw_error *err;
  u32 err_sts;

  err = &hclge_rocee_qmm_ovf_err_int[0];
  err_sts = HCLGE_ROCEE_OVF_ERR_TYPE_MASK &
     le32_to_cpu(desc[0].data[0]);
  while (err->msg) {
   if (err->int_msk == err_sts) {
    dev_err(dev, "%s [error status=0x%x] found\n",
     err->msg,
     le32_to_cpu(desc[0].data[0]));
    break;
   }
   err++;
  }
 }

 if (le32_to_cpu(desc[0].data[1]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
  dev_err(dev, "ROCEE TSP OVF [error status=0x%x] found\n",
   le32_to_cpu(desc[0].data[1]));
 }

 if (le32_to_cpu(desc[0].data[2]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
  dev_err(dev, "ROCEE SCC OVF [error status=0x%x] found\n",
   le32_to_cpu(desc[0].data[2]));
 }

 return 0;
}
