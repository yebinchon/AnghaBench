
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_file {int dummy; } ;
struct sh_veu_dev {struct sh_veu_file* output; struct sh_veu_file* capture; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;



__attribute__((used)) static int sh_veu_stream_init(struct sh_veu_dev *veu, struct sh_veu_file *veu_file,
         enum v4l2_buf_type type)
{
 struct sh_veu_file **stream;

 switch (type) {
 case 129:
  stream = &veu->capture;
  break;
 case 128:
  stream = &veu->output;
  break;
 default:
  return -EINVAL;
 }

 if (*stream == veu_file)
  return 0;

 if (*stream)
  return -EBUSY;

 *stream = veu_file;

 return 0;
}
