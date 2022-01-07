
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_state {int type_flags; } ;


 int DST_TYPE_HAS_FW_1 ;
 int DST_TYPE_HAS_FW_2 ;
 int DST_TYPE_HAS_FW_3 ;
 int DST_TYPE_HAS_NEWTUNE_2 ;
 int DST_TYPE_HAS_SYMDIV ;
 int DST_TYPE_HAS_TS188 ;
 int DST_TYPE_HAS_TS204 ;
 int DST_TYPE_HAS_VLF ;
 int pr_err (char*,...) ;

__attribute__((used)) static void dst_type_flags_print(struct dst_state *state)
{
 u32 type_flags = state->type_flags;

 pr_err("DST type flags :\n");
 if (type_flags & DST_TYPE_HAS_TS188)
  pr_err(" 0x%x newtuner\n", DST_TYPE_HAS_TS188);
 if (type_flags & DST_TYPE_HAS_NEWTUNE_2)
  pr_err(" 0x%x newtuner 2\n", DST_TYPE_HAS_NEWTUNE_2);
 if (type_flags & DST_TYPE_HAS_TS204)
  pr_err(" 0x%x ts204\n", DST_TYPE_HAS_TS204);
 if (type_flags & DST_TYPE_HAS_VLF)
  pr_err(" 0x%x VLF\n", DST_TYPE_HAS_VLF);
 if (type_flags & DST_TYPE_HAS_SYMDIV)
  pr_err(" 0x%x symdiv\n", DST_TYPE_HAS_SYMDIV);
 if (type_flags & DST_TYPE_HAS_FW_1)
  pr_err(" 0x%x firmware version = 1\n", DST_TYPE_HAS_FW_1);
 if (type_flags & DST_TYPE_HAS_FW_2)
  pr_err(" 0x%x firmware version = 2\n", DST_TYPE_HAS_FW_2);
 if (type_flags & DST_TYPE_HAS_FW_3)
  pr_err(" 0x%x firmware version = 3\n", DST_TYPE_HAS_FW_3);
 pr_err("\n");
}
