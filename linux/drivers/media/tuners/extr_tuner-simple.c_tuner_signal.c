
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const TUNER_SIGNAL ;

__attribute__((used)) static inline int tuner_signal(const int status)
{
 return (status & TUNER_SIGNAL) << 13;
}
