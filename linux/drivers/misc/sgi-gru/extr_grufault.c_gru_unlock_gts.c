
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gru_thread_state {int ts_ctxlock; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 TYPE_2__* current ;
 int mutex_unlock (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void gru_unlock_gts(struct gru_thread_state *gts)
{
 mutex_unlock(&gts->ts_ctxlock);
 up_read(&current->mm->mmap_sem);
}
