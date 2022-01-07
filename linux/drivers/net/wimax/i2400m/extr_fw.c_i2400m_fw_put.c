
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_fw {int kref; } ;


 int i2400m_fw_destroy ;
 int kref_put (int *,int ) ;

__attribute__((used)) static
void i2400m_fw_put(struct i2400m_fw *i2400m_fw)
{
 kref_put(&i2400m_fw->kref, i2400m_fw_destroy);
}
