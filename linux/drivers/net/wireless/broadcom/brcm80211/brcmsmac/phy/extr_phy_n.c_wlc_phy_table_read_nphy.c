
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct phytbl_info {void* tbl_ptr; void* tbl_width; void* tbl_offset; void* tbl_len; void* tbl_id; } ;
struct brcms_phy {int dummy; } ;


 int wlc_phy_read_table_nphy (struct brcms_phy*,struct phytbl_info*) ;

void
wlc_phy_table_read_nphy(struct brcms_phy *pi, u32 id, u32 len, u32 offset,
   u32 width, void *data)
{
 struct phytbl_info tbl;

 tbl.tbl_id = id;
 tbl.tbl_len = len;
 tbl.tbl_offset = offset;
 tbl.tbl_width = width;
 tbl.tbl_ptr = data;
 wlc_phy_read_table_nphy(pi, &tbl);
}
