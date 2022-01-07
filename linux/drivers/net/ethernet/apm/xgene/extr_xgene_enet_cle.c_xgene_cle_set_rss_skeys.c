
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_cle {int dummy; } ;


 int CLE_CMD_WR ;
 int RSS_IPV4_HASH_SKEY ;
 int get_random_bytes (int *,int) ;
 int xgene_cle_dram_wr (struct xgene_enet_cle*,int *,int,int ,int ,int ) ;

__attribute__((used)) static int xgene_cle_set_rss_skeys(struct xgene_enet_cle *cle)
{
 u32 secret_key_ipv4[4];
 int ret = 0;

 get_random_bytes(secret_key_ipv4, 16);
 ret = xgene_cle_dram_wr(cle, secret_key_ipv4, 4, 0,
    RSS_IPV4_HASH_SKEY, CLE_CMD_WR);
 return ret;
}
