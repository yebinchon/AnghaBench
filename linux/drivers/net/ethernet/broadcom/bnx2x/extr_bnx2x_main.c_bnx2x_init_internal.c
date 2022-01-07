
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;




 int bnx2x_init_internal_common (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_init_internal(struct bnx2x *bp, u32 load_code)
{
 switch (load_code) {
 case 131:
 case 130:
  bnx2x_init_internal_common(bp);


 case 128:



 case 129:


  break;

 default:
  BNX2X_ERR("Unknown load_code (0x%x) from MCP\n", load_code);
  break;
 }
}
