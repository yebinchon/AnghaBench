
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int * d8; int d32; } ;
struct TYPE_5__ {int position; TYPE_1__ part; } ;
typedef TYPE_2__ emmh32_context ;
typedef int __be32 ;


 int MIC_ACCUM (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void emmh32_update(emmh32_context *context, u8 *pOctets, int len)
{
 int coeff_position, byte_position;

 if (len == 0) return;

 coeff_position = context->position >> 2;


 byte_position = context->position & 3;
 if (byte_position) {

  do {
   if (len == 0) return;
   context->part.d8[byte_position++] = *pOctets++;
   context->position++;
   len--;
  } while (byte_position < 4);
  MIC_ACCUM(ntohl(context->part.d32));
 }


 while (len >= 4) {
  MIC_ACCUM(ntohl(*(__be32 *)pOctets));
  context->position += 4;
  pOctets += 4;
  len -= 4;
 }


 byte_position = 0;
 while (len > 0) {
  context->part.d8[byte_position++] = *pOctets++;
  context->position++;
  len--;
 }
}
