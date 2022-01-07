
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog {int dummy; } ;
struct bpf_insn_access_aux {int dummy; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;


 int BPF_READ ;

__attribute__((used)) static bool lirc_mode2_is_valid_access(int off, int size,
           enum bpf_access_type type,
           const struct bpf_prog *prog,
           struct bpf_insn_access_aux *info)
{

 return type == BPF_READ && off == 0 && size == sizeof(u32);
}
