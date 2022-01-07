
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpss_pg_frame_size {int hlpfr; int pplen; } ;


 int DM365_ISP5_PG_FRAME_SIZE ;
 int isp5_write (int,int ) ;

void dm365_vpss_set_pg_frame_size(struct vpss_pg_frame_size frame_size)
{
 int current_reg = ((frame_size.hlpfr >> 1) - 1) << 16;

 current_reg |= (frame_size.pplen - 1);
 isp5_write(current_reg, DM365_ISP5_PG_FRAME_SIZE);
}
