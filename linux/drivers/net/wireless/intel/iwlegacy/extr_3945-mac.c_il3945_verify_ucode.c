
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int len; scalar_t__ v_addr; } ;
struct TYPE_5__ {int len; scalar_t__ v_addr; } ;
struct TYPE_4__ {int len; scalar_t__ v_addr; } ;
struct il_priv {TYPE_3__ ucode_boot; TYPE_2__ ucode_code; TYPE_1__ ucode_init; } ;
typedef int __le32 ;


 int D_INFO (char*) ;
 int IL_ERR (char*) ;
 int il3945_verify_inst_full (struct il_priv*,int *,int ) ;
 int il3945_verify_inst_sparse (struct il_priv*,int *,int ) ;

__attribute__((used)) static int
il3945_verify_ucode(struct il_priv *il)
{
 __le32 *image;
 u32 len;
 int rc = 0;


 image = (__le32 *) il->ucode_boot.v_addr;
 len = il->ucode_boot.len;
 rc = il3945_verify_inst_sparse(il, image, len);
 if (rc == 0) {
  D_INFO("Bootstrap uCode is good in inst SRAM\n");
  return 0;
 }


 image = (__le32 *) il->ucode_init.v_addr;
 len = il->ucode_init.len;
 rc = il3945_verify_inst_sparse(il, image, len);
 if (rc == 0) {
  D_INFO("Initialize uCode is good in inst SRAM\n");
  return 0;
 }


 image = (__le32 *) il->ucode_code.v_addr;
 len = il->ucode_code.len;
 rc = il3945_verify_inst_sparse(il, image, len);
 if (rc == 0) {
  D_INFO("Runtime uCode is good in inst SRAM\n");
  return 0;
 }

 IL_ERR("NO VALID UCODE IMAGE IN INSTRUCTION SRAM!!\n");




 image = (__le32 *) il->ucode_boot.v_addr;
 len = il->ucode_boot.len;
 rc = il3945_verify_inst_full(il, image, len);

 return rc;
}
