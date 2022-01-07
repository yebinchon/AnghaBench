
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct storm_defs {int letter; scalar_t__ sem_fast_mem_addr; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;


 int BYTES_TO_DWORDS (scalar_t__) ;
 int IORS_PER_SET ;
 int IOR_SET_OFFSET (size_t) ;
 size_t MAX_DBG_STORMS ;
 size_t NUM_IOR_SETS ;
 scalar_t__ SEM_FAST_REG_STORM_REG_FILE ;
 int qed_grc_dump_mem (struct qed_hwfn*,struct qed_ptt*,int*,int,char*,int,int ,int,int,int,char*,int,int ) ;
 int qed_grc_is_storm_included (struct qed_hwfn*,int) ;
 struct storm_defs* s_storm_defs ;
 int strlen (char*) ;

__attribute__((used)) static u32 qed_grc_dump_iors(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt, u32 *dump_buf, bool dump)
{
 char buf[10] = "IOR_SET_?";
 u32 addr, offset = 0;
 u8 storm_id, set_id;

 for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
  struct storm_defs *storm = &s_storm_defs[storm_id];

  if (!qed_grc_is_storm_included(p_hwfn,
            (enum dbg_storms)storm_id))
   continue;

  for (set_id = 0; set_id < NUM_IOR_SETS; set_id++) {
   addr = BYTES_TO_DWORDS(storm->sem_fast_mem_addr +
            SEM_FAST_REG_STORM_REG_FILE) +
          IOR_SET_OFFSET(set_id);
   if (strlen(buf) > 0)
    buf[strlen(buf) - 1] = '0' + set_id;
   offset += qed_grc_dump_mem(p_hwfn,
         p_ptt,
         dump_buf + offset,
         dump,
         buf,
         addr,
         IORS_PER_SET,
         0,
         32,
         0,
         "ior",
         1,
         storm->letter);
  }
 }

 return offset;
}
