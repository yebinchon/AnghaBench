
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct meson_nfc {scalar_t__ reg_base; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GENMASK (int,int ) ;
 int GFP_KERNEL ;
 int NFC_CMD_N2M ;
 scalar_t__ NFC_REG_CMD ;
 int PER_INFO_BYTE ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int meson_nfc_dma_buffer_release (struct nand_chip*,int,int ,int ) ;
 int meson_nfc_dma_buffer_setup (struct nand_chip*,int *,int,int *,int ,int ) ;
 int meson_nfc_drain_cmd (struct meson_nfc*) ;
 int meson_nfc_wait_cmd_finish (struct meson_nfc*,int) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int meson_nfc_read_buf(struct nand_chip *nand, u8 *buf, int len)
{
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 int ret = 0;
 u32 cmd;
 u8 *info;

 info = kzalloc(PER_INFO_BYTE, GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 ret = meson_nfc_dma_buffer_setup(nand, buf, len, info,
      PER_INFO_BYTE, DMA_FROM_DEVICE);
 if (ret)
  goto out;

 cmd = NFC_CMD_N2M | (len & GENMASK(5, 0));
 writel(cmd, nfc->reg_base + NFC_REG_CMD);

 meson_nfc_drain_cmd(nfc);
 meson_nfc_wait_cmd_finish(nfc, 1000);
 meson_nfc_dma_buffer_release(nand, len, PER_INFO_BYTE, DMA_FROM_DEVICE);

out:
 kfree(info);

 return ret;
}
