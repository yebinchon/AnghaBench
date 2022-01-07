
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MCHIP_NB_PAGES ;
 int ptable_copy (int *,int,int,int ) ;

__attribute__((used)) static void mchip_cont_read_frame(u32 v, u8 *buf, int size)
{
 int pt_id;

 pt_id = (v >> 17) & 0x3FF;

 ptable_copy(buf, pt_id, size, MCHIP_NB_PAGES);
}
