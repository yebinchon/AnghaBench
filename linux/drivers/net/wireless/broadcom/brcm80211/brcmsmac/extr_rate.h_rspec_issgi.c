
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RSPEC_SHORT_GI ;

__attribute__((used)) static inline bool rspec_issgi(u32 rspec)
{
 return (rspec & RSPEC_SHORT_GI) == RSPEC_SHORT_GI;
}
