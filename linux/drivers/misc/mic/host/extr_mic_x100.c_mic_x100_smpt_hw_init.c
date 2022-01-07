
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_smpt_hw_info {int num_reg; int page_shift; unsigned long long page_size; int base; } ;
struct mic_device {TYPE_1__* smpt; } ;
struct TYPE_2__ {struct mic_smpt_hw_info info; } ;



__attribute__((used)) static void mic_x100_smpt_hw_init(struct mic_device *mdev)
{
 struct mic_smpt_hw_info *info = &mdev->smpt->info;

 info->num_reg = 32;
 info->page_shift = 34;
 info->page_size = (1ULL << info->page_shift);
 info->base = 0x8000000000ULL;
}
