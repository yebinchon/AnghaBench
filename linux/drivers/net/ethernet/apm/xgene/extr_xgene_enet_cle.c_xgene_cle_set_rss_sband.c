
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_cle {int dummy; } ;


 int CLE_CMD_WR ;
 int CLE_PKTRAM_SIZE ;
 int ETH_HLEN ;
 int PKT_RAM ;
 int XGENE_CLE_IPV4 ;
 int XGENE_CLE_OTHER ;
 int XGENE_CLE_TCP ;
 int XGENE_CLE_UDP ;
 int xgene_cle_dram_wr (struct xgene_enet_cle*,int*,int,int,int ,int ) ;
 int xgene_cle_sband_to_hw (int,int ,int ,int,int*) ;

__attribute__((used)) static int xgene_cle_set_rss_sband(struct xgene_enet_cle *cle)
{
 u32 idx = CLE_PKTRAM_SIZE / sizeof(u32);
 u32 mac_hdr_len = ETH_HLEN;
 u32 sband, reg = 0;
 u32 ipv4_ihl = 5;
 u32 hdr_len;
 int ret;


 hdr_len = (mac_hdr_len << 5) | ipv4_ihl;
 xgene_cle_sband_to_hw(0, XGENE_CLE_IPV4, XGENE_CLE_TCP, hdr_len, &reg);
 sband = reg;


 hdr_len = (mac_hdr_len << 5) | ipv4_ihl;
 xgene_cle_sband_to_hw(1, XGENE_CLE_IPV4, XGENE_CLE_UDP, hdr_len, &reg);
 sband |= (reg << 16);

 ret = xgene_cle_dram_wr(cle, &sband, 1, idx, PKT_RAM, CLE_CMD_WR);
 if (ret)
  return ret;


 hdr_len = (mac_hdr_len << 5) | ipv4_ihl;
 xgene_cle_sband_to_hw(0, XGENE_CLE_IPV4, XGENE_CLE_OTHER,
         hdr_len, &reg);
 sband = reg;


 hdr_len = (mac_hdr_len << 5);
 xgene_cle_sband_to_hw(0, XGENE_CLE_IPV4, XGENE_CLE_OTHER,
         hdr_len, &reg);
 sband |= (reg << 16);

 ret = xgene_cle_dram_wr(cle, &sband, 1, idx + 1, PKT_RAM, CLE_CMD_WR);
 if (ret)
  return ret;

 return 0;
}
