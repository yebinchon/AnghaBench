
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {struct device* dev; } ;
struct sfdp_parameter_header {scalar_t__ major; scalar_t__ minor; scalar_t__ length; } ;
struct sfdp_header {scalar_t__ major; int nph; struct sfdp_parameter_header bfpt_header; int signature; } ;
struct device {int dummy; } ;
typedef int header ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int SFDP_BFPT_ID ;
 scalar_t__ SFDP_JESD216_MAJOR ;
 int SFDP_PARAM_HEADER_ID (struct sfdp_parameter_header const*) ;

 scalar_t__ SFDP_SIGNATURE ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 int kfree (struct sfdp_parameter_header*) ;
 struct sfdp_parameter_header* kmalloc (size_t,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int spi_nor_parse_4bait (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ;
 int spi_nor_parse_bfpt (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ;
 int spi_nor_parse_smpt (struct spi_nor*,struct sfdp_parameter_header const*,struct spi_nor_flash_parameter*) ;
 int spi_nor_read_sfdp (struct spi_nor*,int,size_t,struct sfdp_parameter_header*) ;
 int spi_nor_read_sfdp_dma_unsafe (struct spi_nor*,int ,int,struct sfdp_header*) ;

__attribute__((used)) static int spi_nor_parse_sfdp(struct spi_nor *nor,
         struct spi_nor_flash_parameter *params)
{
 const struct sfdp_parameter_header *param_header, *bfpt_header;
 struct sfdp_parameter_header *param_headers = ((void*)0);
 struct sfdp_header header;
 struct device *dev = nor->dev;
 size_t psize;
 int i, err;


 err = spi_nor_read_sfdp_dma_unsafe(nor, 0, sizeof(header), &header);
 if (err < 0)
  return err;


 if (le32_to_cpu(header.signature) != SFDP_SIGNATURE ||
     header.major != SFDP_JESD216_MAJOR)
  return -EINVAL;





 bfpt_header = &header.bfpt_header;
 if (SFDP_PARAM_HEADER_ID(bfpt_header) != SFDP_BFPT_ID ||
     bfpt_header->major != SFDP_JESD216_MAJOR)
  return -EINVAL;
 if (header.nph) {
  psize = header.nph * sizeof(*param_headers);

  param_headers = kmalloc(psize, GFP_KERNEL);
  if (!param_headers)
   return -ENOMEM;

  err = spi_nor_read_sfdp(nor, sizeof(header),
     psize, param_headers);
  if (err < 0) {
   dev_err(dev, "failed to read SFDP parameter headers\n");
   goto exit;
  }
 }





 for (i = 0; i < header.nph; i++) {
  param_header = &param_headers[i];

  if (SFDP_PARAM_HEADER_ID(param_header) == SFDP_BFPT_ID &&
      param_header->major == SFDP_JESD216_MAJOR &&
      (param_header->minor > bfpt_header->minor ||
       (param_header->minor == bfpt_header->minor &&
        param_header->length > bfpt_header->length)))
   bfpt_header = param_header;
 }

 err = spi_nor_parse_bfpt(nor, bfpt_header, params);
 if (err)
  goto exit;


 for (i = 0; i < header.nph; i++) {
  param_header = &param_headers[i];

  switch (SFDP_PARAM_HEADER_ID(param_header)) {
  case 128:
   err = spi_nor_parse_smpt(nor, param_header, params);
   break;

  case 129:
   err = spi_nor_parse_4bait(nor, param_header, params);
   break;

  default:
   break;
  }

  if (err) {
   dev_warn(dev, "Failed to parse optional parameter table: %04x\n",
     SFDP_PARAM_HEADER_ID(param_header));






   err = 0;
  }
 }

exit:
 kfree(param_headers);
 return err;
}
