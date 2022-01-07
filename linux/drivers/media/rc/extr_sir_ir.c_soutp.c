
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ io ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void soutp(int offset, int value)
{
 outb(value, io + offset);
}
