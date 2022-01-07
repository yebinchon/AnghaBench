
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int dummy; } ;


 int GFAR_ERRATA_76 ;
 scalar_t__ gfar_has_errata (struct gfar_private*,int ) ;

__attribute__((used)) static inline bool gfar_csum_errata_76(struct gfar_private *priv,
           unsigned int len)
{
 return (gfar_has_errata(priv, GFAR_ERRATA_76) &&
        (len > 2500));
}
