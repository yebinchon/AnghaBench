
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int dummy; } ;
struct ubi_device {int work_sem; } ;


 int __schedule_ubi_work (struct ubi_device*,struct ubi_work*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
{
 down_read(&ubi->work_sem);
 __schedule_ubi_work(ubi, wrk);
 up_read(&ubi->work_sem);
}
