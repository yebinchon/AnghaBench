
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct technologic_priv {int io_lock; } ;
struct sja1000_priv {int write_reg; int read_reg; struct technologic_priv* priv; } ;
struct device_node {int dummy; } ;


 int sp_technologic_read_reg16 ;
 int sp_technologic_write_reg16 ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int sp_technologic_init(struct sja1000_priv *priv, struct device_node *of)
{
 struct technologic_priv *tp = priv->priv;

 priv->read_reg = sp_technologic_read_reg16;
 priv->write_reg = sp_technologic_write_reg16;
 spin_lock_init(&tp->io_lock);

 return 0;
}
