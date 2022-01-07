
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int HCLGE_PPP_CMD0_INT_CMD ;
 int HCLGE_PPP_CMD1_INT_CMD ;
 int hclge_config_ppp_error_interrupt (struct hclge_dev*,int ,int) ;

__attribute__((used)) static int hclge_config_ppp_hw_err_int(struct hclge_dev *hdev, bool en)
{
 int ret;

 ret = hclge_config_ppp_error_interrupt(hdev, HCLGE_PPP_CMD0_INT_CMD,
            en);
 if (ret)
  return ret;

 ret = hclge_config_ppp_error_interrupt(hdev, HCLGE_PPP_CMD1_INT_CMD,
            en);

 return ret;
}
