
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int error_recovery; int recovery_ws; } ;


 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int schedule_work (int *) ;

void i2400m_error_recovery(struct i2400m *i2400m)
{
 if (atomic_add_return(1, &i2400m->error_recovery) == 1)
  schedule_work(&i2400m->recovery_ws);
 else
  atomic_dec(&i2400m->error_recovery);
}
