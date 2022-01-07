
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct atmel_ssc_platform_data const* data; } ;
typedef struct atmel_ssc_platform_data const atmel_ssc_platform_data ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 int atmel_ssc_dt_ids ;
 struct of_device_id* of_match_node (int ,scalar_t__) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static inline const struct atmel_ssc_platform_data *
 atmel_ssc_get_driver_data(struct platform_device *pdev)
{
 if (pdev->dev.of_node) {
  const struct of_device_id *match;
  match = of_match_node(atmel_ssc_dt_ids, pdev->dev.of_node);
  if (match == ((void*)0))
   return ((void*)0);
  return match->data;
 }

 return (struct atmel_ssc_platform_data *)
  platform_get_device_id(pdev)->driver_data;
}
