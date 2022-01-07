
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int errata; } ;
typedef enum gfar_errata { ____Placeholder_gfar_errata } gfar_errata ;



__attribute__((used)) static inline int gfar_has_errata(struct gfar_private *priv,
      enum gfar_errata err)
{
 return priv->errata & err;
}
