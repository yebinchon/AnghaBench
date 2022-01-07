
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_dev {TYPE_1__* devtype; } ;
struct coda_codec {int src_fourcc; int dst_fourcc; } ;
struct TYPE_2__ {int num_codecs; struct coda_codec* codecs; } ;


 int coda_format_normalize_yuv (int) ;

__attribute__((used)) static const struct coda_codec *coda_find_codec(struct coda_dev *dev,
      int src_fourcc, int dst_fourcc)
{
 const struct coda_codec *codecs = dev->devtype->codecs;
 int num_codecs = dev->devtype->num_codecs;
 int k;

 src_fourcc = coda_format_normalize_yuv(src_fourcc);
 dst_fourcc = coda_format_normalize_yuv(dst_fourcc);
 if (src_fourcc == dst_fourcc)
  return ((void*)0);

 for (k = 0; k < num_codecs; k++) {
  if (codecs[k].src_fourcc == src_fourcc &&
      codecs[k].dst_fourcc == dst_fourcc)
   break;
 }

 if (k == num_codecs)
  return ((void*)0);

 return &codecs[k];
}
