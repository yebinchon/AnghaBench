
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int major; } ;
struct nfp_nsp {TYPE_1__ ver; } ;



u16 nfp_nsp_get_abi_ver_major(struct nfp_nsp *state)
{
 return state->ver.major;
}
