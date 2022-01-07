
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const TUNER_AFC ;

__attribute__((used)) static inline int tuner_afcstatus(const int status)
{
 return (status & TUNER_AFC) - 2;
}
