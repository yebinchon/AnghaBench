
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_p2p_action_frame {scalar_t__ category; scalar_t__ type; int oui; } ;


 scalar_t__ P2P_AF_CATEGORY ;
 int P2P_OUI ;
 int P2P_OUI_LEN ;
 scalar_t__ P2P_VER ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static bool brcmf_p2p_is_p2p_action(void *frame, u32 frame_len)
{
 struct brcmf_p2p_action_frame *act_frm;

 if (frame == ((void*)0))
  return 0;

 act_frm = (struct brcmf_p2p_action_frame *)frame;
 if (frame_len < sizeof(struct brcmf_p2p_action_frame) - 1)
  return 0;

 if (act_frm->category == P2P_AF_CATEGORY &&
     act_frm->type == P2P_VER &&
     memcmp(act_frm->oui, P2P_OUI, P2P_OUI_LEN) == 0)
  return 1;

 return 0;
}
