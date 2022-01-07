
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ width; scalar_t__ height; } ;


 scalar_t__ QCIF_HEIGHT ;
 scalar_t__ QCIF_WIDTH ;
 scalar_t__ VGA_HEIGHT ;
 scalar_t__ VGA_WIDTH ;

__attribute__((used)) static void viacam_fmt_pre(struct v4l2_pix_format *userfmt,
  struct v4l2_pix_format *sensorfmt)
{
 *sensorfmt = *userfmt;
 if (userfmt->width < QCIF_WIDTH || userfmt->height < QCIF_HEIGHT) {
  userfmt->width = QCIF_WIDTH;
  userfmt->height = QCIF_HEIGHT;
 }
 if (userfmt->width > VGA_WIDTH || userfmt->height > VGA_HEIGHT) {
  userfmt->width = VGA_WIDTH;
  userfmt->height = VGA_HEIGHT;
 }
 sensorfmt->width = VGA_WIDTH;
 sensorfmt->height = VGA_HEIGHT;
}
