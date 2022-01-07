
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int HNAE3_LOOP_PARALLEL_SERDES ;
 int HNAE3_LOOP_SERIAL_SERDES ;
 int hclge_cfg_serdes_loopback (struct hclge_dev*,int,int ) ;
 int hclge_set_app_loopback (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_set_default_loopback(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_set_app_loopback(hdev, 0);
 if (ret)
  return ret;

 ret = hclge_cfg_serdes_loopback(hdev, 0, HNAE3_LOOP_SERIAL_SERDES);
 if (ret)
  return ret;

 return hclge_cfg_serdes_loopback(hdev, 0,
      HNAE3_LOOP_PARALLEL_SERDES);
}
