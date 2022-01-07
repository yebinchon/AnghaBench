
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omapdss_get_version () ;

bool omap_vout_dss_omap34xx(void)
{
 switch (omapdss_get_version()) {
 case 130:
 case 129:
 case 128:
 case 131:
  return 1;
 default:
  return 0;
 }
}
