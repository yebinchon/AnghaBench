
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BS_B ;
 int BS_S ;
 int IR_B ;
 int IR_S ;
 int IR_U ;
 int hclge_tm_set_field (int ,int ,int ) ;

__attribute__((used)) static u32 hclge_tm_get_shapping_para(u8 ir_b, u8 ir_u, u8 ir_s,
          u8 bs_b, u8 bs_s)
{
 u32 shapping_para = 0;

 hclge_tm_set_field(shapping_para, IR_B, ir_b);
 hclge_tm_set_field(shapping_para, IR_U, ir_u);
 hclge_tm_set_field(shapping_para, IR_S, ir_s);
 hclge_tm_set_field(shapping_para, BS_B, bs_b);
 hclge_tm_set_field(shapping_para, BS_S, bs_s);

 return shapping_para;
}
