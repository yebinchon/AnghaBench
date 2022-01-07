
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {unsigned int size; } ;


 unsigned int FL_PER_EQ_UNIT ;

__attribute__((used)) static inline unsigned int fl_cap(const struct sge_fl *fl)
{
 return fl->size - FL_PER_EQ_UNIT;
}
