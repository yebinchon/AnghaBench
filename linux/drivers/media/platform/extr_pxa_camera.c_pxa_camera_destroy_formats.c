
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int user_formats; } ;


 int kfree (int ) ;

__attribute__((used)) static void pxa_camera_destroy_formats(struct pxa_camera_dev *pcdev)
{
 kfree(pcdev->user_formats);
}
