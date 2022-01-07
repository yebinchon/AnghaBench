
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct lan9303 {int dummy; } ;
struct dsa_switch {struct lan9303* priv; } ;


 int dsa_is_user_port (struct dsa_switch*,int) ;
 int lan9303_enable_processing_port (struct lan9303*,int) ;

__attribute__((used)) static int lan9303_port_enable(struct dsa_switch *ds, int port,
          struct phy_device *phy)
{
 struct lan9303 *chip = ds->priv;

 if (!dsa_is_user_port(ds, port))
  return 0;

 return lan9303_enable_processing_port(chip, port);
}
