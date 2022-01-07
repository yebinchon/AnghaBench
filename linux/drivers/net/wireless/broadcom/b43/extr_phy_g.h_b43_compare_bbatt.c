
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_bbatt {scalar_t__ att; } ;



__attribute__((used)) static inline bool b43_compare_bbatt(const struct b43_bbatt *a,
         const struct b43_bbatt *b)
{
 return (a->att == b->att);
}
