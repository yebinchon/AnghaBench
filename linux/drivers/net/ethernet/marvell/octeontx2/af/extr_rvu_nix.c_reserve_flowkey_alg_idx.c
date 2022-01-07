
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rvu {int hw; } ;
struct nix_rx_flowkey_alg {int dummy; } ;
struct TYPE_2__ {int in_use; int * flowkey; } ;
struct nix_hw {TYPE_1__ flowkey; } ;


 int EINVAL ;
 int FIELDS_PER_ALG ;
 int NIX_AF_ERR_RSS_NOSPC_ALGO ;
 int NIX_AF_RX_FLOW_KEY_ALGX_FIELDX (int,int) ;
 int NIX_FLOW_KEY_ALG_MAX ;
 struct nix_hw* get_nix_hw (int ,int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;
 int set_flowkey_fields (struct nix_rx_flowkey_alg*,int ) ;

__attribute__((used)) static int reserve_flowkey_alg_idx(struct rvu *rvu, int blkaddr, u32 flow_cfg)
{
 u64 field[FIELDS_PER_ALG];
 struct nix_hw *hw;
 int fid, rc;

 hw = get_nix_hw(rvu->hw, blkaddr);
 if (!hw)
  return -EINVAL;


 if (hw->flowkey.in_use >= NIX_FLOW_KEY_ALG_MAX)
  return NIX_AF_ERR_RSS_NOSPC_ALGO;


 rc = set_flowkey_fields((struct nix_rx_flowkey_alg *)field, flow_cfg);
 if (rc)
  return rc;


 for (fid = 0; fid < FIELDS_PER_ALG; fid++)
  rvu_write64(rvu, blkaddr,
       NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(hw->flowkey.in_use,
          fid), field[fid]);


 rc = hw->flowkey.in_use;
 hw->flowkey.flowkey[rc] = flow_cfg;
 hw->flowkey.in_use++;

 return rc;
}
