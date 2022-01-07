
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct oxnas_dwmac {int regmap; int clk; int dev; } ;


 unsigned int BIT (int ) ;
 int DWMAC_AUTO_TX_SOURCE ;
 int DWMAC_CKEN_GTX ;
 int DWMAC_CKEN_RXN_OUT ;
 int DWMAC_CKEN_RX_IN ;
 int DWMAC_CKEN_RX_OUT ;
 int DWMAC_CKEN_TXN_OUT ;
 int DWMAC_CKEN_TX_IN ;
 int DWMAC_CKEN_TX_OUT ;
 unsigned int DWMAC_RXN_VARDELAY (int) ;
 unsigned int DWMAC_RX_VARDELAY (int) ;
 int DWMAC_SIMPLE_MUX ;
 unsigned int DWMAC_TXN_VARDELAY (int) ;
 unsigned int DWMAC_TX_VARDELAY (int) ;
 int OXNAS_DWMAC_CTRL_REGOFFSET ;
 int OXNAS_DWMAC_DELAY_REGOFFSET ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int device_reset (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int oxnas_dwmac_init(struct platform_device *pdev, void *priv)
{
 struct oxnas_dwmac *dwmac = priv;
 unsigned int value;
 int ret;


 ret = device_reset(dwmac->dev);
 if (ret)
  return ret;

 ret = clk_prepare_enable(dwmac->clk);
 if (ret)
  return ret;

 ret = regmap_read(dwmac->regmap, OXNAS_DWMAC_CTRL_REGOFFSET, &value);
 if (ret < 0) {
  clk_disable_unprepare(dwmac->clk);
  return ret;
 }


 value |= BIT(DWMAC_CKEN_GTX) |

   BIT(DWMAC_SIMPLE_MUX) |

   BIT(DWMAC_AUTO_TX_SOURCE) |

   BIT(DWMAC_CKEN_TX_OUT) |
   BIT(DWMAC_CKEN_TXN_OUT) |
   BIT(DWMAC_CKEN_TX_IN) |
   BIT(DWMAC_CKEN_RX_OUT) |
   BIT(DWMAC_CKEN_RXN_OUT) |
   BIT(DWMAC_CKEN_RX_IN);
 regmap_write(dwmac->regmap, OXNAS_DWMAC_CTRL_REGOFFSET, value);


 value = DWMAC_TX_VARDELAY(4) |
  DWMAC_TXN_VARDELAY(2) |
  DWMAC_RX_VARDELAY(10) |
  DWMAC_RXN_VARDELAY(8);
 regmap_write(dwmac->regmap, OXNAS_DWMAC_DELAY_REGOFFSET, value);

 return 0;
}
