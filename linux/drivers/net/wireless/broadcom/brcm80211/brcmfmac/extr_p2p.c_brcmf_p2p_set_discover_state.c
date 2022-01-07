
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcmf_p2p_disc_st_le {void* dwell; void* chspec; int state; } ;
struct brcmf_if {int dummy; } ;
typedef int s32 ;
typedef int discover_state ;


 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fil_bsscfg_data_set (struct brcmf_if*,char*,struct brcmf_p2p_disc_st_le*,int) ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static s32 brcmf_p2p_set_discover_state(struct brcmf_if *ifp, u8 state,
     u16 chanspec, u16 listen_ms)
{
 struct brcmf_p2p_disc_st_le discover_state;
 s32 ret = 0;
 brcmf_dbg(TRACE, "enter\n");

 discover_state.state = state;
 discover_state.chspec = cpu_to_le16(chanspec);
 discover_state.dwell = cpu_to_le16(listen_ms);
 ret = brcmf_fil_bsscfg_data_set(ifp, "p2p_state", &discover_state,
     sizeof(discover_state));
 return ret;
}
