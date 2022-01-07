
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int * x; TYPE_1__ member_0; } ;
typedef TYPE_2__ map_word ;



__attribute__((used)) static inline map_word build_map_word(u_long myword)
{
 map_word val = { {0} };
 val.x[0] = myword;
 return val;
}
