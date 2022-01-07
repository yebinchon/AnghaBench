
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i2400m {int dummy; } ;


 int i2400m_cmd_enter_powersave (struct i2400m*) ;

__attribute__((used)) static
int debugfs_i2400m_suspend_set(void *data, u64 val)
{
 int result;
 struct i2400m *i2400m = data;
 result = i2400m_cmd_enter_powersave(i2400m);
 if (result >= 0)
  result = 0;
 return result;
}
