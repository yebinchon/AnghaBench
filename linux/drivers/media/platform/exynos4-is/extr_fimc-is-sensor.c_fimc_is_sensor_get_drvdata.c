
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_drv_data {int dummy; } ;
struct of_device_id {struct sensor_drv_data const* data; } ;
struct device_node {int dummy; } ;


 int fimc_is_sensor_of_ids ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;

const struct sensor_drv_data *fimc_is_sensor_get_drvdata(
   struct device_node *node)
{
 const struct of_device_id *of_id;

 of_id = of_match_node(fimc_is_sensor_of_ids, node);
 return of_id ? of_id->data : ((void*)0);
}
