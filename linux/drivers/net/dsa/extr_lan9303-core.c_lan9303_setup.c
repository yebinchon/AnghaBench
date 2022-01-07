
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int dev; } ;
struct dsa_switch {struct lan9303* priv; } ;


 int EINVAL ;
 int LAN9303_SWE_GLB_INGRESS_CFG ;
 int LAN9303_SWE_GLB_INGR_IGMP_PORT (int) ;
 int LAN9303_SWE_GLB_INGR_IGMP_TRAP ;
 int dev_err (int ,char*,...) ;
 int dsa_is_cpu_port (struct dsa_switch*,int ) ;
 int lan9303_enable_processing_port (struct lan9303*,int ) ;
 int lan9303_separate_ports (struct lan9303*) ;
 int lan9303_setup_tagging (struct lan9303*) ;
 int lan9303_write_switch_reg_mask (struct lan9303*,int ,int,int) ;

__attribute__((used)) static int lan9303_setup(struct dsa_switch *ds)
{
 struct lan9303 *chip = ds->priv;
 int ret;


 if (!dsa_is_cpu_port(ds, 0)) {
  dev_err(chip->dev, "port 0 is not the CPU port\n");
  return -EINVAL;
 }

 ret = lan9303_setup_tagging(chip);
 if (ret)
  dev_err(chip->dev, "failed to setup port tagging %d\n", ret);

 ret = lan9303_separate_ports(chip);
 if (ret)
  dev_err(chip->dev, "failed to separate ports %d\n", ret);

 ret = lan9303_enable_processing_port(chip, 0);
 if (ret)
  dev_err(chip->dev, "failed to re-enable switching %d\n", ret);


 ret = lan9303_write_switch_reg_mask(chip, LAN9303_SWE_GLB_INGRESS_CFG,
         LAN9303_SWE_GLB_INGR_IGMP_TRAP |
         LAN9303_SWE_GLB_INGR_IGMP_PORT(0),
         LAN9303_SWE_GLB_INGR_IGMP_PORT(1) |
         LAN9303_SWE_GLB_INGR_IGMP_PORT(2));
 if (ret)
  dev_err(chip->dev, "failed to setup IGMP trap %d\n", ret);

 return 0;
}
