
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct iavf_adapter {int link_speed; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;






 int dev_err (int *,char*) ;

__attribute__((used)) static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
          u64 max_tx_rate)
{
 int speed = 0, ret = 0;

 switch (adapter->link_speed) {
 case 128:
  speed = 40000;
  break;
 case 129:
  speed = 25000;
  break;
 case 130:
  speed = 20000;
  break;
 case 132:
  speed = 10000;
  break;
 case 131:
  speed = 1000;
  break;
 case 133:
  speed = 100;
  break;
 default:
  break;
 }

 if (max_tx_rate > speed) {
  dev_err(&adapter->pdev->dev,
   "Invalid tx rate specified\n");
  ret = -EINVAL;
 }

 return ret;
}
