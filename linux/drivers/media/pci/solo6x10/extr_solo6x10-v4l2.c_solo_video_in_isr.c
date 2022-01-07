
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int disp_thread_wait; } ;


 int wake_up_interruptible_all (int *) ;

void solo_video_in_isr(struct solo_dev *solo_dev)
{
 wake_up_interruptible_all(&solo_dev->disp_thread_wait);
}
