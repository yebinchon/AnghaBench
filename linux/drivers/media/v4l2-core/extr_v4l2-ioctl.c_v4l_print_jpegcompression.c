
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {int jpeg_markers; int COM_len; int APP_len; int APPn; int quality; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_jpegcompression(const void *arg, bool write_only)
{
 const struct v4l2_jpegcompression *p = arg;

 pr_cont("quality=%d, APPn=%d, APP_len=%d, COM_len=%d, jpeg_markers=0x%x\n",
  p->quality, p->APPn, p->APP_len,
  p->COM_len, p->jpeg_markers);
}
