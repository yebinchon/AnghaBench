
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int posted; int siga_mode; int sigb_mode; void* sigb; void* siga; } ;
struct nfp_cpp_explicit {TYPE_1__ cmd; } ;
typedef enum nfp_cpp_explicit_signal_mode { ____Placeholder_nfp_cpp_explicit_signal_mode } nfp_cpp_explicit_signal_mode ;



int nfp_cpp_explicit_set_posted(struct nfp_cpp_explicit *expl, int posted,
    u8 siga,
    enum nfp_cpp_explicit_signal_mode siga_mode,
    u8 sigb,
    enum nfp_cpp_explicit_signal_mode sigb_mode)
{
 expl->cmd.posted = posted;
 expl->cmd.siga = siga;
 expl->cmd.sigb = sigb;
 expl->cmd.siga_mode = siga_mode;
 expl->cmd.sigb_mode = sigb_mode;

 return 0;
}
