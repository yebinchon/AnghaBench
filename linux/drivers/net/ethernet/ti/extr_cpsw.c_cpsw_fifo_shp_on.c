
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_slave {int slave_num; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* regs; struct cpsw_slave* slaves; } ;
struct TYPE_2__ {int ptype; } ;


 int CPSW_FIFO_SHAPE_EN_SHIFT ;
 size_t cpsw_slave_index (struct cpsw_common*,struct cpsw_priv*) ;
 int readl_relaxed (int *) ;
 int writel_relaxed (int,int *) ;

__attribute__((used)) static void cpsw_fifo_shp_on(struct cpsw_priv *priv, int fifo, int on)
{
 struct cpsw_common *cpsw = priv->cpsw;
 struct cpsw_slave *slave;
 u32 shift, mask, val;

 val = readl_relaxed(&cpsw->regs->ptype);

 slave = &cpsw->slaves[cpsw_slave_index(cpsw, priv)];
 shift = CPSW_FIFO_SHAPE_EN_SHIFT + 3 * slave->slave_num;
 mask = (1 << --fifo) << shift;
 val = on ? val | mask : val & ~mask;

 writel_relaxed(val, &cpsw->regs->ptype);
}
