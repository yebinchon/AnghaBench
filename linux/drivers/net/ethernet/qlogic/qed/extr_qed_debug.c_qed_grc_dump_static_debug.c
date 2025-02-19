
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; scalar_t__* block_in_reset; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_block {int dummy; } ;
struct block_defs {scalar_t__* dbg_client_id; int dbg_enable_addr; int name; } ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int BIT (scalar_t__) ;
 size_t BYTES_TO_DWORDS (int ) ;
 int DBG_BUS_FRAME_MODE_8HW_0ST ;
 int DBG_BUS_TARGET_ID_INT_BUF ;
 int DBG_REG_CALENDAR_OUT_DATA ;
 int DBG_REG_DBG_BLOCK_ON ;
 int DBG_REG_DEBUG_TARGET ;
 int DBG_REG_FULL_MODE ;
 int DWORDS_TO_BYTES (size_t) ;
 size_t MAX_BLOCK_ID ;
 scalar_t__ MAX_DBG_BUS_CLIENTS ;
 size_t NUM_DBG_LINES (struct dbg_bus_block*) ;
 int SPLIT_TYPE_NONE ;
 size_t STATIC_DEBUG_LINE_DWORDS ;
 struct dbg_bus_block* get_dbg_bus_block_desc (struct qed_hwfn*,int) ;
 int memset (size_t*,int ,int ) ;
 int qed_bus_enable_clients (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_bus_enable_dbg_block (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_bus_reset_dbg_block (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_bus_set_framing_mode (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_config_dbg_line (struct qed_hwfn*,struct qed_ptt*,int,scalar_t__,int,int ,int ,int ) ;
 size_t qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,size_t*,int,size_t,size_t,int,int ,int ) ;
 size_t qed_grc_dump_mem_hdr (struct qed_hwfn*,size_t*,int,int ,int ,size_t,int,int,char*,int,int ) ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 struct block_defs** s_block_defs ;

__attribute__((used)) static u32 qed_grc_dump_static_debug(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u32 *dump_buf, bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 block_id, line_id, offset = 0;


 if (dump && qed_rd(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON))
  return 0;

 if (dump) {

  for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
   struct block_defs *block = s_block_defs[block_id];

   if (block->dbg_client_id[dev_data->chip_id] !=
       MAX_DBG_BUS_CLIENTS)
    qed_wr(p_hwfn, p_ptt, block->dbg_enable_addr,
           0);
  }

  qed_bus_reset_dbg_block(p_hwfn, p_ptt);
  qed_bus_set_framing_mode(p_hwfn,
      p_ptt, DBG_BUS_FRAME_MODE_8HW_0ST);
  qed_wr(p_hwfn,
         p_ptt, DBG_REG_DEBUG_TARGET, DBG_BUS_TARGET_ID_INT_BUF);
  qed_wr(p_hwfn, p_ptt, DBG_REG_FULL_MODE, 1);
  qed_bus_enable_dbg_block(p_hwfn, p_ptt, 1);
 }


 for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
  struct block_defs *block = s_block_defs[block_id];
  struct dbg_bus_block *block_desc;
  u32 block_dwords, addr, len;
  u8 dbg_client_id;

  if (block->dbg_client_id[dev_data->chip_id] ==
      MAX_DBG_BUS_CLIENTS)
   continue;

  block_desc = get_dbg_bus_block_desc(p_hwfn,
          (enum block_id)block_id);
  block_dwords = NUM_DBG_LINES(block_desc) *
          STATIC_DEBUG_LINE_DWORDS;


  offset += qed_grc_dump_mem_hdr(p_hwfn,
            dump_buf + offset,
            dump,
            block->name,
            0,
            block_dwords,
            32, 0, "STATIC", 0, 0);

  if (!dump) {
   offset += block_dwords;
   continue;
  }


  if (dev_data->block_in_reset[block_id]) {
   memset(dump_buf + offset, 0,
          DWORDS_TO_BYTES(block_dwords));
   offset += block_dwords;
   continue;
  }


  dbg_client_id = block->dbg_client_id[dev_data->chip_id];
  qed_bus_enable_clients(p_hwfn,
           p_ptt,
           BIT(dbg_client_id));

  addr = BYTES_TO_DWORDS(DBG_REG_CALENDAR_OUT_DATA);
  len = STATIC_DEBUG_LINE_DWORDS;
  for (line_id = 0; line_id < (u32)NUM_DBG_LINES(block_desc);
       line_id++) {

   qed_config_dbg_line(p_hwfn,
         p_ptt,
         (enum block_id)block_id,
         (u8)line_id, 0xf, 0, 0, 0);


   offset += qed_grc_dump_addr_range(p_hwfn,
         p_ptt,
         dump_buf + offset,
         dump,
         addr,
         len,
         1, SPLIT_TYPE_NONE,
         0);
  }


  qed_bus_enable_clients(p_hwfn, p_ptt, 0);
  qed_wr(p_hwfn, p_ptt, block->dbg_enable_addr, 0);
 }

 if (dump) {
  qed_bus_enable_dbg_block(p_hwfn, p_ptt, 0);
  qed_bus_enable_clients(p_hwfn, p_ptt, 0);
 }

 return offset;
}
