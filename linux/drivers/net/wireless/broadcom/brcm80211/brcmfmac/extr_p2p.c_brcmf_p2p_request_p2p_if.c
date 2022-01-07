
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcmf_p2p_info {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_fil_p2p_if_le {void* chspec; void* type; int addr; } ;
typedef int if_request ;
typedef enum brcmf_fil_p2p_if_types { ____Placeholder_brcmf_fil_p2p_if_types } brcmf_fil_p2p_if_types ;


 int ETH_ALEN ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_fil_p2p_if_le*,int) ;
 int brcmf_p2p_get_current_chanspec (struct brcmf_p2p_info*,int *) ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int brcmf_p2p_request_p2p_if(struct brcmf_p2p_info *p2p,
        struct brcmf_if *ifp, u8 ea[ETH_ALEN],
        enum brcmf_fil_p2p_if_types iftype)
{
 struct brcmf_fil_p2p_if_le if_request;
 int err;
 u16 chanspec;


 brcmf_p2p_get_current_chanspec(p2p, &chanspec);


 memcpy(if_request.addr, ea, ETH_ALEN);
 if_request.type = cpu_to_le16((u16)iftype);
 if_request.chspec = cpu_to_le16(chanspec);

 err = brcmf_fil_iovar_data_set(ifp, "p2p_ifadd", &if_request,
           sizeof(if_request));

 return err;
}
