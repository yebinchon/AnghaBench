
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mic_thread_lock; int mic_intr_lock; int cb_ida; int * cb_list; } ;
struct mic_device {TYPE_1__ irq_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MIC_NUM_OFFSETS ;
 int ida_init (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mic_setup_callbacks(struct mic_device *mdev)
{
 int i;

 mdev->irq_info.cb_list = kmalloc_array(MIC_NUM_OFFSETS,
            sizeof(*mdev->irq_info.cb_list),
            GFP_KERNEL);
 if (!mdev->irq_info.cb_list)
  return -ENOMEM;

 for (i = 0; i < MIC_NUM_OFFSETS; i++)
  INIT_LIST_HEAD(&mdev->irq_info.cb_list[i]);
 ida_init(&mdev->irq_info.cb_ida);
 spin_lock_init(&mdev->irq_info.mic_intr_lock);
 spin_lock_init(&mdev->irq_info.mic_thread_lock);
 return 0;
}
