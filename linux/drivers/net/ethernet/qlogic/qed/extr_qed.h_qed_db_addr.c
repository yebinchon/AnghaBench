
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DB_LEGACY_ADDR_DEMS ;
 int FIELD_VALUE (int ,int) ;
 int QED_PF_DEMS_SIZE ;

__attribute__((used)) static inline u32 qed_db_addr(u32 cid, u32 DEMS)
{
 u32 db_addr = FIELD_VALUE(DB_LEGACY_ADDR_DEMS, DEMS) |
        (cid * QED_PF_DEMS_SIZE);

 return db_addr;
}
