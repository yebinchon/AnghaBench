
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct brcmf_event_msg {scalar_t__ event_code; int flags; } ;


 int BRCMF_EVENT_MSG_LINK ;
 scalar_t__ BRCMF_E_DEAUTH ;
 scalar_t__ BRCMF_E_DEAUTH_IND ;
 scalar_t__ BRCMF_E_DISASSOC_IND ;
 scalar_t__ BRCMF_E_LINK ;
 int CONN ;
 int brcmf_dbg (int ,char*) ;

__attribute__((used)) static bool brcmf_is_linkdown(const struct brcmf_event_msg *e)
{
 u32 event = e->event_code;
 u16 flags = e->flags;

 if ((event == BRCMF_E_DEAUTH) || (event == BRCMF_E_DEAUTH_IND) ||
     (event == BRCMF_E_DISASSOC_IND) ||
     ((event == BRCMF_E_LINK) && (!(flags & BRCMF_EVENT_MSG_LINK)))) {
  brcmf_dbg(CONN, "Processing link down\n");
  return 1;
 }
 return 0;
}
