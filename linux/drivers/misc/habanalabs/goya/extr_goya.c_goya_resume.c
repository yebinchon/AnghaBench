
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int goya_init_iatu (struct hl_device*) ;

int goya_resume(struct hl_device *hdev)
{
 return goya_init_iatu(hdev);
}
