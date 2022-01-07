
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int ds; } ;


 int dsa_unregister_switch (int ) ;

__attribute__((used)) static inline void b53_switch_remove(struct b53_device *dev)
{
 dsa_unregister_switch(dev->ds);
}
