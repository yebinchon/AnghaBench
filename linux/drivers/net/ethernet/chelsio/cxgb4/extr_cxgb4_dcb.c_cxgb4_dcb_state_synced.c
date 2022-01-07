
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cxgb4_dcb_state { ____Placeholder_cxgb4_dcb_state } cxgb4_dcb_state ;


 int CXGB4_DCB_STATE_FW_ALLSYNCED ;
 int CXGB4_DCB_STATE_HOST ;

__attribute__((used)) static inline bool cxgb4_dcb_state_synced(enum cxgb4_dcb_state state)
{
 if (state == CXGB4_DCB_STATE_FW_ALLSYNCED ||
     state == CXGB4_DCB_STATE_HOST)
  return 1;
 else
  return 0;
}
