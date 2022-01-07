
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hinic_dev {TYPE_2__* hwdev; } ;
struct TYPE_3__ {int max_qps; } ;
struct TYPE_4__ {TYPE_1__ nic_cap; } ;


 int hinic_set_max_qnum (struct hinic_dev*,int ) ;

__attribute__((used)) static int hinic_configure_max_qnum(struct hinic_dev *nic_dev)
{
 int err;

 err = hinic_set_max_qnum(nic_dev, nic_dev->hwdev->nic_cap.max_qps);
 if (err)
  return err;

 return 0;
}
