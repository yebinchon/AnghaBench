
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ window; scalar_t__ rx; } ;
typedef TYPE_1__ miccntx ;



__attribute__((used)) static void MoveWindow(miccntx *context, u32 micSeq)
{
 u32 shift;


 if (micSeq > context->window) {
  shift = (micSeq - context->window) >> 1;


  if (shift < 32)
   context->rx >>= shift;
  else
   context->rx = 0;

  context->window = micSeq;
 }
}
