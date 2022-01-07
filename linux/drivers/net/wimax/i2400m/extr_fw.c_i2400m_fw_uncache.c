
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void i2400m_fw ;
struct i2400m {int rx_lock; int * fw_cached; } ;


 int i2400m_fw_put (void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void i2400m_fw_uncache(struct i2400m *i2400m)
{
 struct i2400m_fw *i2400m_fw;

 spin_lock(&i2400m->rx_lock);
 i2400m_fw = i2400m->fw_cached;
 i2400m->fw_cached = ((void*)0);
 spin_unlock(&i2400m->rx_lock);

 if (i2400m_fw != ((void*)0) && i2400m_fw != (void *) ~0)
  i2400m_fw_put(i2400m_fw);
}
