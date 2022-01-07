
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;


 scalar_t__ CGX_CMD_LINK_BRING_DOWN ;
 scalar_t__ CGX_CMD_LINK_BRING_UP ;
 int EVTREG_ID ;
 scalar_t__ FIELD_GET (int ,int ) ;

__attribute__((used)) static inline bool cgx_cmdresp_is_linkevent(u64 event)
{
 u8 id;

 id = FIELD_GET(EVTREG_ID, event);
 if (id == CGX_CMD_LINK_BRING_UP ||
     id == CGX_CMD_LINK_BRING_DOWN)
  return 1;
 else
  return 0;
}
