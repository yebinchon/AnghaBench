
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void pxa_camera_deactivate(struct pxa_camera_dev *pcdev)
{
 clk_disable_unprepare(pcdev->clk);
}
