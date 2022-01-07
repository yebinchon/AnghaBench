
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int in_use; scalar_t__* flowkey; } ;
struct nix_hw {TYPE_1__ flowkey; } ;


 int ERANGE ;

__attribute__((used)) static int get_flowkey_alg_idx(struct nix_hw *nix_hw, u32 flow_cfg)
{
 int i;


 for (i = 0; i < nix_hw->flowkey.in_use; i++)
  if (nix_hw->flowkey.flowkey[i] == flow_cfg)
   return i;

 return -ERANGE;
}
