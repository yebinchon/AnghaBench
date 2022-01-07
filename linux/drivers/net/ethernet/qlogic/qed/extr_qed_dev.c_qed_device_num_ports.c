
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int num_ports; } ;



int qed_device_num_ports(struct qed_dev *cdev)
{
 return cdev->num_ports;
}
