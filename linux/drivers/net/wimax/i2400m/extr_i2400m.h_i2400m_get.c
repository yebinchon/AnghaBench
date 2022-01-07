
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;


 int dev_hold (int ) ;

__attribute__((used)) static inline
struct i2400m *i2400m_get(struct i2400m *i2400m)
{
 dev_hold(i2400m->wimax_dev.net_dev);
 return i2400m;
}
