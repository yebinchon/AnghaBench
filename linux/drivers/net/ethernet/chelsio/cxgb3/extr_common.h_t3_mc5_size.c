
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {unsigned int tcam_size; } ;



__attribute__((used)) static inline unsigned int t3_mc5_size(const struct mc5 *p)
{
 return p->tcam_size;
}
