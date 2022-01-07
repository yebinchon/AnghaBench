
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;


 int QED_LEVEL_INFO ;
 int QED_LEVEL_NOTICE ;
 int QED_LEVEL_VERBOSE ;
 int QED_LOG_INFO_MASK ;
 int QED_LOG_NOTICE_MASK ;
 int QED_LOG_VERBOSE_MASK ;

void qede_config_debug(uint debug, u32 *p_dp_module, u8 *p_dp_level)
{
 *p_dp_level = QED_LEVEL_NOTICE;
 *p_dp_module = 0;

 if (debug & QED_LOG_VERBOSE_MASK) {
  *p_dp_level = QED_LEVEL_VERBOSE;
  *p_dp_module = (debug & 0x3FFFFFFF);
 } else if (debug & QED_LOG_INFO_MASK) {
  *p_dp_level = QED_LEVEL_INFO;
 } else if (debug & QED_LOG_NOTICE_MASK) {
  *p_dp_level = QED_LEVEL_NOTICE;
 }
}
