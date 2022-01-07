
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int rc_map; int * input_dev; } ;


 int input_unregister_device (int *) ;
 int ir_free_table (int *) ;

__attribute__((used)) static void rc_free_rx_device(struct rc_dev *dev)
{
 if (!dev)
  return;

 if (dev->input_dev) {
  input_unregister_device(dev->input_dev);
  dev->input_dev = ((void*)0);
 }

 ir_free_table(&dev->rc_map);
}
