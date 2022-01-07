
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct big_ram_defs {int* ram_size; int data_reg_addr; int addr_reg_addr; int instance_name; int * is_256b_bit_offset; int is_256b_reg_addr; } ;


 int BIG_RAM_NAME_LEN ;
 int BIT (int ) ;
 int BRB_REG_BIG_RAM_DATA_SIZE ;
 int BYTES_TO_DWORDS (int ) ;
 int DIV_ROUND_UP (int,int) ;
 int SPLIT_TYPE_NONE ;
 int qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int ,int ) ;
 int qed_grc_dump_mem_hdr (struct qed_hwfn*,int*,int,char*,int ,int,int,int,char*,int,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 struct big_ram_defs* s_big_ram_defs ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static u32 qed_grc_dump_big_ram(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    u32 *dump_buf, bool dump, u8 big_ram_id)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 block_size, ram_size, offset = 0, reg_val, i;
 char mem_name[12] = "???_BIG_RAM";
 char type_name[8] = "???_RAM";
 struct big_ram_defs *big_ram;

 big_ram = &s_big_ram_defs[big_ram_id];
 ram_size = big_ram->ram_size[dev_data->chip_id];

 reg_val = qed_rd(p_hwfn, p_ptt, big_ram->is_256b_reg_addr);
 block_size = reg_val &
       BIT(big_ram->is_256b_bit_offset[dev_data->chip_id]) ? 256
          : 128;

 strncpy(type_name, big_ram->instance_name, BIG_RAM_NAME_LEN);
 strncpy(mem_name, big_ram->instance_name, BIG_RAM_NAME_LEN);


 offset += qed_grc_dump_mem_hdr(p_hwfn,
           dump_buf + offset,
           dump,
           mem_name,
           0,
           ram_size,
           block_size * 8,
           0, type_name, 0, 0);


 if (!dump)
  return offset + ram_size;


 for (i = 0; i < DIV_ROUND_UP(ram_size, BRB_REG_BIG_RAM_DATA_SIZE);
      i++) {
  u32 addr, len;

  qed_wr(p_hwfn, p_ptt, big_ram->addr_reg_addr, i);
  addr = BYTES_TO_DWORDS(big_ram->data_reg_addr);
  len = BRB_REG_BIG_RAM_DATA_SIZE;
  offset += qed_grc_dump_addr_range(p_hwfn,
        p_ptt,
        dump_buf + offset,
        dump,
        addr,
        len,
        0, SPLIT_TYPE_NONE, 0);
 }

 return offset;
}
