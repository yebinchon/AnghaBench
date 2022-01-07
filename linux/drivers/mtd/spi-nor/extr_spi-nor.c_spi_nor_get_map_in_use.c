
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor {int addr_width; int read_dummy; int read_opcode; } ;


 int EINVAL ;
 int ENOMEM ;
 int const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int SMPT_CMD_OPCODE (int const) ;
 int SMPT_CMD_READ_DATA (int const) ;
 int const SMPT_DESC_END ;
 int const SMPT_DESC_TYPE_MAP ;
 int SMPT_MAP_ID (int const) ;
 scalar_t__ SMPT_MAP_REGION_COUNT (int const) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int spi_nor_read_raw (struct spi_nor*,int,int,int*) ;
 int spi_nor_smpt_addr_width (struct spi_nor*,int const) ;
 int spi_nor_smpt_read_dummy (struct spi_nor*,int const) ;

__attribute__((used)) static const u32 *spi_nor_get_map_in_use(struct spi_nor *nor, const u32 *smpt,
      u8 smpt_len)
{
 const u32 *ret;
 u8 *buf;
 u32 addr;
 int err;
 u8 i;
 u8 addr_width, read_opcode, read_dummy;
 u8 read_data_mask, map_id;


 buf = kmalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return ERR_PTR(-ENOMEM);

 addr_width = nor->addr_width;
 read_dummy = nor->read_dummy;
 read_opcode = nor->read_opcode;

 map_id = 0;

 for (i = 0; i < smpt_len; i += 2) {
  if (smpt[i] & SMPT_DESC_TYPE_MAP)
   break;

  read_data_mask = SMPT_CMD_READ_DATA(smpt[i]);
  nor->addr_width = spi_nor_smpt_addr_width(nor, smpt[i]);
  nor->read_dummy = spi_nor_smpt_read_dummy(nor, smpt[i]);
  nor->read_opcode = SMPT_CMD_OPCODE(smpt[i]);
  addr = smpt[i + 1];

  err = spi_nor_read_raw(nor, addr, 1, buf);
  if (err) {
   ret = ERR_PTR(err);
   goto out;
  }





  map_id = map_id << 1 | !!(*buf & read_data_mask);
 }
 ret = ERR_PTR(-EINVAL);
 while (i < smpt_len) {
  if (SMPT_MAP_ID(smpt[i]) == map_id) {
   ret = smpt + i;
   break;
  }






  if (smpt[i] & SMPT_DESC_END)
   break;


  i += SMPT_MAP_REGION_COUNT(smpt[i]) + 1;
 }


out:
 kfree(buf);
 nor->addr_width = addr_width;
 nor->read_dummy = read_dummy;
 nor->read_opcode = read_opcode;
 return ret;
}
