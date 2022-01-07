
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_emif_data {int dummy; } ;
struct platform_device {int dummy; } ;


 struct ti_emif_data* emif_instance ;
 int ti_emif_free_sram (struct ti_emif_data*) ;

__attribute__((used)) static int ti_emif_remove(struct platform_device *pdev)
{
 struct ti_emif_data *emif_data = emif_instance;

 emif_instance = ((void*)0);

 ti_emif_free_sram(emif_data);

 return 0;
}
