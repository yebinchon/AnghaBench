
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int dec_codecs; int enc_codecs; } ;
struct hfi_codec_supported {int enc_codecs; int dec_codecs; } ;


 int HFI_VIDEO_CODEC_HEVC ;
 int HFI_VIDEO_CODEC_SPARK ;
 scalar_t__ IS_V1 (struct venus_core*) ;

__attribute__((used)) static void parse_codecs(struct venus_core *core, void *data)
{
 struct hfi_codec_supported *codecs = data;

 core->dec_codecs = codecs->dec_codecs;
 core->enc_codecs = codecs->enc_codecs;

 if (IS_V1(core)) {
  core->dec_codecs &= ~HFI_VIDEO_CODEC_HEVC;
  core->dec_codecs &= ~HFI_VIDEO_CODEC_SPARK;
 }
}
