
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int fw_version; } ;



__attribute__((used)) static inline
unsigned i2400m_le_v1_3(struct i2400m *i2400m)
{

 return i2400m->fw_version <= 0x00090001;
}
