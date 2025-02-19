
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct storm_defs {size_t sem_fast_mem_addr; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct fw_info_location {int size; size_t grc_addr; } ;
struct fw_info {int size; size_t grc_addr; } ;
typedef int fw_info_location ;


 size_t BYTES_IN_DWORD ;
 size_t BYTES_TO_DWORDS (int) ;
 size_t DWORDS_TO_BYTES (int ) ;
 size_t SEM_FAST_REG_INT_RAM ;
 int SEM_FAST_REG_INT_RAM_SIZE_BB_K2 ;
 int memset (struct fw_info_location*,int ,int) ;
 size_t qed_rd (struct qed_hwfn*,struct qed_ptt*,size_t) ;
 struct storm_defs* s_storm_defs ;

__attribute__((used)) static void qed_read_storm_fw_info(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       u8 storm_id, struct fw_info *fw_info)
{
 struct storm_defs *storm = &s_storm_defs[storm_id];
 struct fw_info_location fw_info_location;
 u32 addr, i, *dest;

 memset(&fw_info_location, 0, sizeof(fw_info_location));
 memset(fw_info, 0, sizeof(*fw_info));




 addr = storm->sem_fast_mem_addr + SEM_FAST_REG_INT_RAM +
        DWORDS_TO_BYTES(SEM_FAST_REG_INT_RAM_SIZE_BB_K2) -
        sizeof(fw_info_location);
 dest = (u32 *)&fw_info_location;

 for (i = 0; i < BYTES_TO_DWORDS(sizeof(fw_info_location));
      i++, addr += BYTES_IN_DWORD)
  dest[i] = qed_rd(p_hwfn, p_ptt, addr);


 if (fw_info_location.size > 0 && fw_info_location.size <=
     sizeof(*fw_info)) {
  addr = fw_info_location.grc_addr;
  dest = (u32 *)fw_info;
  for (i = 0; i < BYTES_TO_DWORDS(fw_info_location.size);
       i++, addr += BYTES_IN_DWORD)
   dest[i] = qed_rd(p_hwfn, p_ptt, addr);
 }
}
