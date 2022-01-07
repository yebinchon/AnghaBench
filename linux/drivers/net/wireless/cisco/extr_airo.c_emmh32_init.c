
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ position; scalar_t__ accum; } ;
typedef TYPE_1__ emmh32_context ;



__attribute__((used)) static void emmh32_init(emmh32_context *context)
{

 context->accum = 0;
 context->position = 0;
}
