
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int next_avail_src; } ;
struct mic_device {TYPE_2__ irq_info; TYPE_1__* intr_info; } ;
struct TYPE_3__ {int* intr_len; } ;


 size_t MIC_INTR_DB ;

int mic_next_db(struct mic_device *mdev)
{
 int next_db;

 next_db = mdev->irq_info.next_avail_src %
  mdev->intr_info->intr_len[MIC_INTR_DB];
 mdev->irq_info.next_avail_src++;
 return next_db;
}
