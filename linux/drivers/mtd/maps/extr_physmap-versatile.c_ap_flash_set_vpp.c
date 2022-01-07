
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int INTEGRATOR_SC_CTRLC_OFFSET ;
 int INTEGRATOR_SC_CTRLS_OFFSET ;
 int INTEGRATOR_SC_CTRL_FLVPPEN ;
 int INTEGRATOR_SC_CTRL_FLWP ;
 int pr_err (char*) ;
 int regmap_write (int ,int ,int) ;
 int syscon_regmap ;

__attribute__((used)) static void ap_flash_set_vpp(struct map_info *map, int on)
{
 int ret;

 if (on) {
  ret = regmap_write(syscon_regmap,
   INTEGRATOR_SC_CTRLS_OFFSET,
   INTEGRATOR_SC_CTRL_FLVPPEN | INTEGRATOR_SC_CTRL_FLWP);
  if (ret)
   pr_err("error enabling AP VPP\n");
 } else {
  ret = regmap_write(syscon_regmap,
   INTEGRATOR_SC_CTRLC_OFFSET,
   INTEGRATOR_SC_CTRL_FLVPPEN | INTEGRATOR_SC_CTRL_FLWP);
  if (ret)
   pr_err("error disabling AP VPP\n");
 }
}
