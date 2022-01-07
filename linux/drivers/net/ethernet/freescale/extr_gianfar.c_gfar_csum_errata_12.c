
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int dummy; } ;


 int GFAR_ERRATA_12 ;
 scalar_t__ gfar_has_errata (struct gfar_private*,int ) ;

__attribute__((used)) static inline bool gfar_csum_errata_12(struct gfar_private *priv,
           unsigned long fcb_addr)
{
 return (gfar_has_errata(priv, GFAR_ERRATA_12) &&
        (fcb_addr % 0x20) > 0x18);
}
