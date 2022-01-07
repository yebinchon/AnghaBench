
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;


 int CMDQ_TYPE ;
 int DB_TYPE ;
 int HINIC_CMDQ_DB_INFO_SET (int,int ) ;
 int HINIC_CTRL_PATH ;
 int HINIC_DB_CMDQ_TYPE ;
 int HI_PROD_IDX ;
 int PATH ;
 int UPPER_8_BITS (int ) ;

__attribute__((used)) static void cmdq_fill_db(u32 *db_info,
    enum hinic_cmdq_type cmdq_type, u16 prod_idx)
{
 *db_info = HINIC_CMDQ_DB_INFO_SET(UPPER_8_BITS(prod_idx), HI_PROD_IDX) |
     HINIC_CMDQ_DB_INFO_SET(HINIC_CTRL_PATH, PATH) |
     HINIC_CMDQ_DB_INFO_SET(cmdq_type, CMDQ_TYPE) |
     HINIC_CMDQ_DB_INFO_SET(HINIC_DB_CMDQ_TYPE, DB_TYPE);
}
