
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_plane_pix_format {unsigned int sizeimage; unsigned int bytesperline; } ;


 unsigned int CEU_MAX_BPL ;
 int memset (struct v4l2_plane_pix_format*,int ,int) ;

__attribute__((used)) static void ceu_update_plane_sizes(struct v4l2_plane_pix_format *plane,
       unsigned int bpl, unsigned int szimage)
{
 memset(plane, 0, sizeof(*plane));

 plane->sizeimage = szimage;
 if (plane->bytesperline < bpl || plane->bytesperline > CEU_MAX_BPL)
  plane->bytesperline = bpl;
}
