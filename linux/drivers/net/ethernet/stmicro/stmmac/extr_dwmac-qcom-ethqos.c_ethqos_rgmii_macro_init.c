
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_ethqos {int speed; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int EINVAL ;
 int GENMASK (int,int) ;
 int RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL ;
 int RGMII_CONFIG2_RSVD_CONFIG15 ;
 int RGMII_CONFIG2_RX_PROG_SWAP ;
 int RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN ;
 int RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN ;
 int RGMII_CONFIG_BYPASS_TX_ID_EN ;
 int RGMII_CONFIG_DDR_MODE ;
 int RGMII_CONFIG_INTF_SEL ;
 int RGMII_CONFIG_LOOPBACK_EN ;
 int RGMII_CONFIG_MAX_SPD_PRG_2 ;
 int RGMII_CONFIG_MAX_SPD_PRG_9 ;
 int RGMII_CONFIG_POS_NEG_DATA_SEL ;
 int RGMII_CONFIG_PROG_SWAP ;
 int RGMII_IO_MACRO_CONFIG ;
 int RGMII_IO_MACRO_CONFIG2 ;
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY ;
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE ;
 int SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN ;
 int SDCC_DDR_CONFIG_PRG_DLY_EN ;
 int SDCC_DDR_CONFIG_PRG_RCLK_DLY ;
 int SDCC_HC_REG_DDR_CONFIG ;



 int dev_err (int *,char*,int) ;
 int rgmii_updatel (struct qcom_ethqos*,int,int,int ) ;

__attribute__((used)) static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos)
{

 rgmii_updatel(ethqos, RGMII_CONFIG2_TX_TO_RX_LOOPBACK_EN,
        0, RGMII_IO_MACRO_CONFIG2);


 rgmii_updatel(ethqos, RGMII_CONFIG_INTF_SEL,
        0, RGMII_IO_MACRO_CONFIG);

 switch (ethqos->speed) {
 case 128:
  rgmii_updatel(ethqos, RGMII_CONFIG_DDR_MODE,
         RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
         0, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
         RGMII_CONFIG_POS_NEG_DATA_SEL,
         RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_PROG_SWAP,
         RGMII_CONFIG_PROG_SWAP, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
         RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
         RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
         RGMII_CONFIG2_RX_PROG_SWAP,
         RGMII_IO_MACRO_CONFIG2);


  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_PRG_RCLK_DLY,
         57, SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_PRG_DLY_EN,
         SDCC_DDR_CONFIG_PRG_DLY_EN,
         SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_LOOPBACK_EN,
         RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
  break;

 case 129:
  rgmii_updatel(ethqos, RGMII_CONFIG_DDR_MODE,
         RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
         RGMII_CONFIG_BYPASS_TX_ID_EN,
         RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
         0, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_PROG_SWAP,
         0, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
         RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
         RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG_MAX_SPD_PRG_2,
         BIT(6), RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
         0, RGMII_IO_MACRO_CONFIG2);

  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE,
         (BIT(29) | BIT(27)), SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
         SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
         SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
         SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
         SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_LOOPBACK_EN,
         RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
  break;

 case 130:
  rgmii_updatel(ethqos, RGMII_CONFIG_DDR_MODE,
         RGMII_CONFIG_DDR_MODE, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_BYPASS_TX_ID_EN,
         RGMII_CONFIG_BYPASS_TX_ID_EN,
         RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_POS_NEG_DATA_SEL,
         0, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_PROG_SWAP,
         0, RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG2_DATA_DIVIDE_CLK_SEL,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_TX_CLK_PHASE_SHIFT_EN,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG_MAX_SPD_PRG_9,
         BIT(12) | GENMASK(9, 8),
         RGMII_IO_MACRO_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RSVD_CONFIG15,
         0, RGMII_IO_MACRO_CONFIG2);
  rgmii_updatel(ethqos, RGMII_CONFIG2_RX_PROG_SWAP,
         0, RGMII_IO_MACRO_CONFIG2);

  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_CODE,
         (BIT(29) | BIT(27)), SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
         SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY,
         SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
         SDCC_DDR_CONFIG_EXT_PRG_RCLK_DLY_EN,
         SDCC_HC_REG_DDR_CONFIG);
  rgmii_updatel(ethqos, RGMII_CONFIG_LOOPBACK_EN,
         RGMII_CONFIG_LOOPBACK_EN, RGMII_IO_MACRO_CONFIG);
  break;
 default:
  dev_err(&ethqos->pdev->dev,
   "Invalid speed %d\n", ethqos->speed);
  return -EINVAL;
 }

 return 0;
}
