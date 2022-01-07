
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvu {int dummy; } ;


 int FIELDS_PER_ALG ;
 int NIX_AF_RX_FLOW_KEY_ALGX_FIELDX (int,int) ;
 int NIX_FLOW_KEY_ALG_MAX ;
 int NIX_FLOW_KEY_TYPE_IPV4 ;
 int NIX_FLOW_KEY_TYPE_IPV6 ;
 int NIX_FLOW_KEY_TYPE_SCTP ;
 int NIX_FLOW_KEY_TYPE_TCP ;
 int NIX_FLOW_KEY_TYPE_UDP ;
 int reserve_flowkey_alg_idx (struct rvu*,int,int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static int nix_rx_flowkey_alg_cfg(struct rvu *rvu, int blkaddr)
{
 u32 flowkey_cfg, minkey_cfg;
 int alg, fid, rc;


 for (alg = 0; alg < NIX_FLOW_KEY_ALG_MAX; alg++) {
  for (fid = 0; fid < FIELDS_PER_ALG; fid++)
   rvu_write64(rvu, blkaddr,
        NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(alg, fid),
        0);
 }


 flowkey_cfg = NIX_FLOW_KEY_TYPE_IPV4 | NIX_FLOW_KEY_TYPE_IPV6;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 minkey_cfg = flowkey_cfg;
 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_UDP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_SCTP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
   NIX_FLOW_KEY_TYPE_UDP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
   NIX_FLOW_KEY_TYPE_SCTP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_UDP |
   NIX_FLOW_KEY_TYPE_SCTP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;


 flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
        NIX_FLOW_KEY_TYPE_UDP | NIX_FLOW_KEY_TYPE_SCTP;
 rc = reserve_flowkey_alg_idx(rvu, blkaddr, flowkey_cfg);
 if (rc < 0)
  return rc;

 return 0;
}
