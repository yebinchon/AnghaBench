
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gbe_priv {scalar_t__ host_port; } ;



__attribute__((used)) static int gbe_get_slave_port(struct gbe_priv *priv, u32 slave_num)
{
 if (priv->host_port == 0)
  return slave_num + 1;

 return slave_num;
}
