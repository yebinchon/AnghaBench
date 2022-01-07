
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_canfd_channel {int base; } ;
struct canfd_frame {scalar_t__ data; int len; } ;


 int DIV_ROUND_UP (int ,int) ;
 int rcar_canfd_write (int ,int,int) ;

__attribute__((used)) static void rcar_canfd_put_data(struct rcar_canfd_channel *priv,
    struct canfd_frame *cf, u32 off)
{
 u32 i, lwords;

 lwords = DIV_ROUND_UP(cf->len, sizeof(u32));
 for (i = 0; i < lwords; i++)
  rcar_canfd_write(priv->base, off + (i * sizeof(u32)),
     *((u32 *)cf->data + i));
}
