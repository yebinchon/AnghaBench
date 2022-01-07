
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca8k_priv {int ds; } ;
struct mdio_device {int dev; } ;


 int QCA8K_NUM_PORTS ;
 struct qca8k_priv* dev_get_drvdata (int *) ;
 int dsa_unregister_switch (int ) ;
 int qca8k_port_set_status (struct qca8k_priv*,int,int ) ;

__attribute__((used)) static void
qca8k_sw_remove(struct mdio_device *mdiodev)
{
 struct qca8k_priv *priv = dev_get_drvdata(&mdiodev->dev);
 int i;

 for (i = 0; i < QCA8K_NUM_PORTS; i++)
  qca8k_port_set_status(priv, i, 0);

 dsa_unregister_switch(priv->ds);
}
