
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OMAPDSS_VER_OMAP24xx ;
 scalar_t__ omapdss_get_version () ;

bool omap_vout_dss_omap24xx(void)
{
 return omapdss_get_version() == OMAPDSS_VER_OMAP24xx;
}
