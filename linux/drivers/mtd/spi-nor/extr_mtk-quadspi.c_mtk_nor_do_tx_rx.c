
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ MTK_NOR_CNT_REG ;
 int MTK_NOR_MAX_RX_TX_SHIFT ;
 int MTK_NOR_MAX_SHIFT ;
 int MTK_NOR_PRG_CMD ;
 scalar_t__ MTK_NOR_PRG_REG (int) ;
 scalar_t__ MTK_NOR_SHREG (int) ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
       u8 *tx, int txlen, u8 *rx, int rxlen)
{
 int len = 1 + txlen + rxlen;
 int i, ret, idx;

 if (len > MTK_NOR_MAX_SHIFT)
  return -EINVAL;

 writeb(len * 8, mtk_nor->base + MTK_NOR_CNT_REG);


 idx = MTK_NOR_MAX_RX_TX_SHIFT - 1;


 writeb(op, mtk_nor->base + MTK_NOR_PRG_REG(idx));
 idx--;


 for (i = 0; i < txlen; i++, idx--)
  writeb(tx[i], mtk_nor->base + MTK_NOR_PRG_REG(idx));


 while (idx >= 0) {
  writeb(0, mtk_nor->base + MTK_NOR_PRG_REG(idx));
  idx--;
 }

 ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PRG_CMD);
 if (ret)
  return ret;


 idx = rxlen - 1;


 for (i = 0; i < rxlen; i++, idx--)
  rx[i] = readb(mtk_nor->base + MTK_NOR_SHREG(idx));

 return 0;
}
