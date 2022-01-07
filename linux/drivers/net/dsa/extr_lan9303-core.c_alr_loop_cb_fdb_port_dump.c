
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct port_fdb_dump_ctx {int data; int (* cb ) (int *,int ,int,int ) ;int port; } ;
struct lan9303 {int dummy; } ;


 int BIT (int ) ;
 int ETH_ALEN ;
 int LAN9303_ALR_DAT1_STATIC ;
 int alr_reg_to_mac (int,int,int *) ;
 int stub1 (int *,int ,int,int ) ;

__attribute__((used)) static void alr_loop_cb_fdb_port_dump(struct lan9303 *chip, u32 dat0,
          u32 dat1, int portmap, void *ctx)
{
 struct port_fdb_dump_ctx *dump_ctx = ctx;
 u8 mac[ETH_ALEN];
 bool is_static;

 if ((BIT(dump_ctx->port) & portmap) == 0)
  return;

 alr_reg_to_mac(dat0, dat1, mac);
 is_static = !!(dat1 & LAN9303_ALR_DAT1_STATIC);
 dump_ctx->cb(mac, 0, is_static, dump_ctx->data);
}
