
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static inline void msleep_range(unsigned int delay_base)
{
 usleep_range(delay_base * 1000, delay_base * 1000 + 500);
}
