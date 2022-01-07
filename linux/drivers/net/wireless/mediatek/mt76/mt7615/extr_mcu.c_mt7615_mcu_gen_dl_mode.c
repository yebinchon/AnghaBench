
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DL_MODE_ENCRYPT ;
 int DL_MODE_KEY_IDX ;
 int DL_MODE_NEED_RSP ;
 int DL_MODE_RESET_SEC_IV ;
 int DL_MODE_WORKING_PDA_CR4 ;
 int FIELD_GET (int ,int) ;
 int FIELD_PREP (int ,int ) ;
 int FW_FEATURE_SET_ENCRYPT ;
 int FW_FEATURE_SET_KEY_IDX ;

__attribute__((used)) static u32 mt7615_mcu_gen_dl_mode(u8 feature_set, bool is_cr4)
{
 u32 ret = 0;

 ret |= (feature_set & FW_FEATURE_SET_ENCRYPT) ?
        (DL_MODE_ENCRYPT | DL_MODE_RESET_SEC_IV) : 0;
 ret |= FIELD_PREP(DL_MODE_KEY_IDX,
     FIELD_GET(FW_FEATURE_SET_KEY_IDX, feature_set));
 ret |= DL_MODE_NEED_RSP;
 ret |= is_cr4 ? DL_MODE_WORKING_PDA_CR4 : 0;

 return ret;
}
