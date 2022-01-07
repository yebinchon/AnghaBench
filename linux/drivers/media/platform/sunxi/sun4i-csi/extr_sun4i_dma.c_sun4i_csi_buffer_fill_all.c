
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_csi {int dummy; } ;


 unsigned int CSI_MAX_BUFFER ;
 int sun4i_csi_buffer_fill_slot (struct sun4i_csi*,unsigned int) ;

__attribute__((used)) static int sun4i_csi_buffer_fill_all(struct sun4i_csi *csi)
{
 unsigned int slot;
 int ret;

 for (slot = 0; slot < CSI_MAX_BUFFER; slot++) {
  ret = sun4i_csi_buffer_fill_slot(csi, slot);
  if (ret)
   return ret;
 }

 return 0;
}
