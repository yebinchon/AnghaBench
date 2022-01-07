
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int thr_wait; int jobs; int flags; } ;


 int FLAG_MIC_CAPABLE ;
 int JOB_MIC ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void airo_handle_cisco_mic(struct airo_info *ai)
{
 if (test_bit(FLAG_MIC_CAPABLE, &ai->flags)) {
  set_bit(JOB_MIC, &ai->jobs);
  wake_up_interruptible(&ai->thr_wait);
 }
}
