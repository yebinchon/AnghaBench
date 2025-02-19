
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct net_device {int dummy; } ;
struct can_bittiming {int sjw; int brp; int phase_seg1; int prop_seg; scalar_t__ phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct mcp251x_priv {TYPE_1__ can; struct spi_device* spi; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CNF1 ;
 int CNF1_SJW_SHIFT ;
 int CNF2 ;
 int CNF2_BTLMODE ;
 int CNF2_PS1_SHIFT ;
 int CNF2_SAM ;
 int CNF3 ;
 int CNF3_PHSEG2_MASK ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int mcp251x_read_reg (struct spi_device*,int ) ;
 int mcp251x_write_bits (struct spi_device*,int ,int ,scalar_t__) ;
 int mcp251x_write_reg (struct spi_device*,int ,int) ;
 struct mcp251x_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mcp251x_do_set_bittiming(struct net_device *net)
{
 struct mcp251x_priv *priv = netdev_priv(net);
 struct can_bittiming *bt = &priv->can.bittiming;
 struct spi_device *spi = priv->spi;

 mcp251x_write_reg(spi, CNF1, ((bt->sjw - 1) << CNF1_SJW_SHIFT) |
     (bt->brp - 1));
 mcp251x_write_reg(spi, CNF2, CNF2_BTLMODE |
     (priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES ?
      CNF2_SAM : 0) |
     ((bt->phase_seg1 - 1) << CNF2_PS1_SHIFT) |
     (bt->prop_seg - 1));
 mcp251x_write_bits(spi, CNF3, CNF3_PHSEG2_MASK,
      (bt->phase_seg2 - 1));
 dev_dbg(&spi->dev, "CNF: 0x%02x 0x%02x 0x%02x\n",
  mcp251x_read_reg(spi, CNF1),
  mcp251x_read_reg(spi, CNF2),
  mcp251x_read_reg(spi, CNF3));

 return 0;
}
