
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_intr_info {int dummy; } ;
struct mic_device {struct mic_intr_info* intr_info; } ;


 scalar_t__ mic_x100_intr_init ;

__attribute__((used)) static void mic_x100_hw_intr_init(struct mic_device *mdev)
{
 mdev->intr_info = (struct mic_intr_info *)mic_x100_intr_init;
}
