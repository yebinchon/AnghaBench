
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int * asic_funcs; } ;


 int goya_funcs ;

void goya_set_asic_funcs(struct hl_device *hdev)
{
 hdev->asic_funcs = &goya_funcs;
}
