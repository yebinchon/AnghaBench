
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi_codec_mask_supported {int video_domains; int codecs; } ;



__attribute__((used)) static void parse_codecs_mask(u32 *codecs, u32 *domain, void *data)
{
 struct hfi_codec_mask_supported *mask = data;

 *codecs = mask->codecs;
 *domain = mask->video_domains;
}
