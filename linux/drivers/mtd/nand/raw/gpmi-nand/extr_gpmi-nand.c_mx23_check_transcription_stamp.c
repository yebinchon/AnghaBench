
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct boot_rom_geometry {int search_area_stride_exponent; unsigned int stride_size_in_pages; } ;
struct gpmi_nand_data {struct nand_chip nand; struct device* dev; struct boot_rom_geometry rom_geometry; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,...) ;
 int fingerprint ;
 int memcmp (int *,int ,int ) ;
 int nand_deselect_target (struct nand_chip*) ;
 int * nand_get_data_buf (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,unsigned int,int,int *,int ) ;
 int nand_select_target (struct nand_chip*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int mx23_check_transcription_stamp(struct gpmi_nand_data *this)
{
 struct boot_rom_geometry *rom_geo = &this->rom_geometry;
 struct device *dev = this->dev;
 struct nand_chip *chip = &this->nand;
 unsigned int search_area_size_in_strides;
 unsigned int stride;
 unsigned int page;
 u8 *buffer = nand_get_data_buf(chip);
 int found_an_ncb_fingerprint = 0;
 int ret;


 search_area_size_in_strides = 1 << rom_geo->search_area_stride_exponent;

 nand_select_target(chip, 0);




 dev_dbg(dev, "Scanning for an NCB fingerprint...\n");

 for (stride = 0; stride < search_area_size_in_strides; stride++) {

  page = stride * rom_geo->stride_size_in_pages;

  dev_dbg(dev, "Looking for a fingerprint in page 0x%x\n", page);





  ret = nand_read_page_op(chip, page, 12, buffer,
     strlen(fingerprint));
  if (ret)
   continue;


  if (!memcmp(buffer, fingerprint, strlen(fingerprint))) {
   found_an_ncb_fingerprint = 1;
   break;
  }

 }

 nand_deselect_target(chip);

 if (found_an_ncb_fingerprint)
  dev_dbg(dev, "\tFound a fingerprint\n");
 else
  dev_dbg(dev, "\tNo fingerprint found\n");
 return found_an_ncb_fingerprint;
}
