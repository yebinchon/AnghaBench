
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int inb (scalar_t__) ;
 scalar_t__ io ;

__attribute__((used)) static inline unsigned int sinp(int offset)
{
 return inb(io + offset);
}
