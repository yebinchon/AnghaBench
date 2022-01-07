
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subsample; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 TYPE_2__ meye ;

__attribute__((used)) static inline int mchip_vsize(void)
{
 return meye.params.subsample ? 240 : 480;
}
