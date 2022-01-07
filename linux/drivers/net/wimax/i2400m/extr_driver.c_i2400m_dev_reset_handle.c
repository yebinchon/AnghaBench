
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {char const* reset_reason; int reset_ws; } ;


 int schedule_work (int *) ;

int i2400m_dev_reset_handle(struct i2400m *i2400m, const char *reason)
{
 i2400m->reset_reason = reason;
 return schedule_work(&i2400m->reset_ws);
}
