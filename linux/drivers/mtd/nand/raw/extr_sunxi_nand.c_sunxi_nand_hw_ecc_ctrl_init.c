
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunxi_nfc {scalar_t__ dmac; int dev; } ;
struct sunxi_nand_hw_ecc {int mode; } ;
struct nand_ecc_ctrl {int options; int size; int strength; int bytes; int write_oob_raw; int read_oob_raw; int write_subpage; int write_page; int read_subpage; int read_page; struct sunxi_nand_hw_ecc* priv; int write_oob; int read_oob; } ;
struct nand_chip {int options; int controller; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct device_node {int dummy; } ;


 int ALIGN (int,int) ;
 int ARRAY_SIZE (int const*) ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int NAND_ECC_MAXIMIZE ;
 int NAND_USE_BOUNCE_BUFFER ;
 int dev_err (int ,char*) ;
 int fls (int) ;
 int kfree (struct sunxi_nand_hw_ecc*) ;
 struct sunxi_nand_hw_ecc* kzalloc (int,int ) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_read_oob_std ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_oob_std ;
 int sunxi_nand_ooblayout_ops ;
 int sunxi_nfc_hw_ecc_read_oob ;
 int sunxi_nfc_hw_ecc_read_page ;
 int sunxi_nfc_hw_ecc_read_page_dma ;
 int sunxi_nfc_hw_ecc_read_subpage ;
 int sunxi_nfc_hw_ecc_read_subpage_dma ;
 int sunxi_nfc_hw_ecc_write_oob ;
 int sunxi_nfc_hw_ecc_write_page ;
 int sunxi_nfc_hw_ecc_write_page_dma ;
 int sunxi_nfc_hw_ecc_write_subpage ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;

__attribute__((used)) static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
           struct nand_ecc_ctrl *ecc,
           struct device_node *np)
{
 static const u8 strengths[] = { 16, 24, 28, 32, 40, 48, 56, 60, 64 };
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct sunxi_nand_hw_ecc *data;
 int nsectors;
 int ret;
 int i;

 if (ecc->options & NAND_ECC_MAXIMIZE) {
  int bytes;

  ecc->size = 1024;
  nsectors = mtd->writesize / ecc->size;


  bytes = (mtd->oobsize - 2) / nsectors;


  bytes -= 4;


  if (bytes % 2)
   bytes--;

  ecc->strength = bytes * 8 / fls(8 * ecc->size);

  for (i = 0; i < ARRAY_SIZE(strengths); i++) {
   if (strengths[i] > ecc->strength)
    break;
  }

  if (!i)
   ecc->strength = 0;
  else
   ecc->strength = strengths[i - 1];
 }

 if (ecc->size != 512 && ecc->size != 1024)
  return -EINVAL;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 if (ecc->size == 512 && mtd->writesize > 512) {
  ecc->size = 1024;
  ecc->strength *= 2;
 }


 for (i = 0; i < ARRAY_SIZE(strengths); i++) {
  if (ecc->strength <= strengths[i]) {




   ecc->strength = strengths[i];
   break;
  }
 }

 if (i >= ARRAY_SIZE(strengths)) {
  dev_err(nfc->dev, "unsupported strength\n");
  ret = -ENOTSUPP;
  goto err;
 }

 data->mode = i;


 ecc->bytes = DIV_ROUND_UP(ecc->strength * fls(8 * 1024), 8);


 ecc->bytes = ALIGN(ecc->bytes, 2);

 nsectors = mtd->writesize / ecc->size;

 if (mtd->oobsize < ((ecc->bytes + 4) * nsectors)) {
  ret = -EINVAL;
  goto err;
 }

 ecc->read_oob = sunxi_nfc_hw_ecc_read_oob;
 ecc->write_oob = sunxi_nfc_hw_ecc_write_oob;
 mtd_set_ooblayout(mtd, &sunxi_nand_ooblayout_ops);
 ecc->priv = data;

 if (nfc->dmac) {
  ecc->read_page = sunxi_nfc_hw_ecc_read_page_dma;
  ecc->read_subpage = sunxi_nfc_hw_ecc_read_subpage_dma;
  ecc->write_page = sunxi_nfc_hw_ecc_write_page_dma;
  nand->options |= NAND_USE_BOUNCE_BUFFER;
 } else {
  ecc->read_page = sunxi_nfc_hw_ecc_read_page;
  ecc->read_subpage = sunxi_nfc_hw_ecc_read_subpage;
  ecc->write_page = sunxi_nfc_hw_ecc_write_page;
 }


 ecc->write_subpage = sunxi_nfc_hw_ecc_write_subpage;
 ecc->read_oob_raw = nand_read_oob_std;
 ecc->write_oob_raw = nand_write_oob_std;

 return 0;

err:
 kfree(data);

 return ret;
}
