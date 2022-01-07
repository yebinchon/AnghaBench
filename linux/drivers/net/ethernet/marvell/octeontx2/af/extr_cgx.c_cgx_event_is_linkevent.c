
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ CGX_EVT_LINK_CHANGE ;
 int EVTREG_ID ;
 scalar_t__ FIELD_GET (int ,int ) ;

__attribute__((used)) static inline bool cgx_event_is_linkevent(u64 event)
{
 if (FIELD_GET(EVTREG_ID, event) == CGX_EVT_LINK_CHANGE)
  return 1;
 else
  return 0;
}
