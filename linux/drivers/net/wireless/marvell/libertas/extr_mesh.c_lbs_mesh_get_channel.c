
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbs_private {scalar_t__ mesh_channel; } ;



__attribute__((used)) static uint16_t lbs_mesh_get_channel(struct lbs_private *priv)
{
 return priv->mesh_channel ?: 1;
}
