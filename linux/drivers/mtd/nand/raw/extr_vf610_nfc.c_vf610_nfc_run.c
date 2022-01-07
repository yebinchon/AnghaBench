
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf610_nfc {int dev; } ;


 int COL_ADDR_MASK ;
 int COL_ADDR_SHIFT ;
 int NFC_COL_ADDR ;
 int NFC_FLASH_CMD1 ;
 int NFC_FLASH_CMD2 ;
 int NFC_ROW_ADDR ;
 int NFC_SECTOR_SIZE ;
 int ROW_ADDR_MASK ;
 int ROW_ADDR_SHIFT ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int vf610_nfc_done (struct vf610_nfc*) ;
 int vf610_nfc_set_field (struct vf610_nfc*,int ,int ,int ,int ) ;
 int vf610_nfc_write (struct vf610_nfc*,int ,int ) ;

__attribute__((used)) static inline void vf610_nfc_run(struct vf610_nfc *nfc, u32 col, u32 row,
     u32 cmd1, u32 cmd2, u32 trfr_sz)
{
 vf610_nfc_set_field(nfc, NFC_COL_ADDR, COL_ADDR_MASK,
       COL_ADDR_SHIFT, col);

 vf610_nfc_set_field(nfc, NFC_ROW_ADDR, ROW_ADDR_MASK,
       ROW_ADDR_SHIFT, row);

 vf610_nfc_write(nfc, NFC_SECTOR_SIZE, trfr_sz);
 vf610_nfc_write(nfc, NFC_FLASH_CMD1, cmd1);
 vf610_nfc_write(nfc, NFC_FLASH_CMD2, cmd2);

 dev_dbg(nfc->dev,
  "col 0x%04x, row 0x%08x, cmd1 0x%08x, cmd2 0x%08x, len %d\n",
  col, row, cmd1, cmd2, trfr_sz);

 vf610_nfc_done(nfc);
}
