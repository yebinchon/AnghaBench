
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_uif {int dummy; } ;


 int VI6_UIF_DISCOM_DOCMCCRCR ;
 int vsp1_uif_read (struct vsp1_uif*,int ) ;

u32 vsp1_uif_get_crc(struct vsp1_uif *uif)
{
 return vsp1_uif_read(uif, VI6_UIF_DISCOM_DOCMCCRCR);
}
