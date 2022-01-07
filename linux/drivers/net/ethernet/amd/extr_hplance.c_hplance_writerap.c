
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_private {scalar_t__ base; } ;


 scalar_t__ HPLANCE_REGOFF ;
 scalar_t__ HPLANCE_STATUS ;
 scalar_t__ LANCE_RAP ;
 int LE_ACK ;
 int in_8 (scalar_t__) ;
 int out_be16 (scalar_t__,unsigned short) ;

__attribute__((used)) static void hplance_writerap(void *priv, unsigned short value)
{
 struct lance_private *lp = (struct lance_private *)priv;
 do {
  out_be16(lp->base + HPLANCE_REGOFF + LANCE_RAP, value);
 } while ((in_8(lp->base + HPLANCE_STATUS) & LE_ACK) == 0);
}
