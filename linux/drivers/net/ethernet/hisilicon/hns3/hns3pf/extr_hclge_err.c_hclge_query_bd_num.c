
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct device {int dummy; } ;
typedef enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int HCLGE_MPF_MSIX_INT_MIN_BD_NUM ;
 int HCLGE_MPF_RAS_INT_MIN_BD_NUM ;
 int HCLGE_PF_MSIX_INT_MIN_BD_NUM ;
 int HCLGE_PF_RAS_INT_MIN_BD_NUM ;
 int HCLGE_QUERY_MSIX_INT_STS_BD_NUM ;
 int HCLGE_QUERY_RAS_INT_STS_BD_NUM ;
 int dev_err (struct device*,char*,int,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_query_bd_num(struct hclge_dev *hdev, bool is_ras,
         int *mpf_bd_num, int *pf_bd_num)
{
 struct device *dev = &hdev->pdev->dev;
 u32 mpf_min_bd_num, pf_min_bd_num;
 enum hclge_opcode_type opcode;
 struct hclge_desc desc_bd;
 int ret;

 if (is_ras) {
  opcode = HCLGE_QUERY_RAS_INT_STS_BD_NUM;
  mpf_min_bd_num = HCLGE_MPF_RAS_INT_MIN_BD_NUM;
  pf_min_bd_num = HCLGE_PF_RAS_INT_MIN_BD_NUM;
 } else {
  opcode = HCLGE_QUERY_MSIX_INT_STS_BD_NUM;
  mpf_min_bd_num = HCLGE_MPF_MSIX_INT_MIN_BD_NUM;
  pf_min_bd_num = HCLGE_PF_MSIX_INT_MIN_BD_NUM;
 }

 hclge_cmd_setup_basic_desc(&desc_bd, opcode, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc_bd, 1);
 if (ret) {
  dev_err(dev, "fail(%d) to query msix int status bd num\n",
   ret);
  return ret;
 }

 *mpf_bd_num = le32_to_cpu(desc_bd.data[0]);
 *pf_bd_num = le32_to_cpu(desc_bd.data[1]);
 if (*mpf_bd_num < mpf_min_bd_num || *pf_bd_num < pf_min_bd_num) {
  dev_err(dev, "Invalid bd num: mpf(%d), pf(%d)\n",
   *mpf_bd_num, *pf_bd_num);
  return -EINVAL;
 }

 return 0;
}
