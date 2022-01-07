
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_decode_return_params_t {scalar_t__ error_code; int decode_time_in_us; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; int decode_errors; int decoded_frames; int stream_errors; struct delta_dev* dev; } ;


 scalar_t__ JPEG_DECODER_NO_ERROR ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_warn_ratelimited (int ,char*,int ,int ,int ) ;
 int err_str (scalar_t__) ;
 scalar_t__ is_stream_error (scalar_t__) ;

__attribute__((used)) static bool delta_mjpeg_check_status(struct delta_ctx *pctx,
         struct jpeg_decode_return_params_t *status)
{
 struct delta_dev *delta = pctx->dev;
 bool dump = 0;

 if (status->error_code == JPEG_DECODER_NO_ERROR)
  goto out;

 if (is_stream_error(status->error_code)) {
  dev_warn_ratelimited(delta->dev,
         "%s  firmware: stream error @ frame %d (%s)\n",
         pctx->name, pctx->decoded_frames,
         err_str(status->error_code));
  pctx->stream_errors++;
 } else {
  dev_warn_ratelimited(delta->dev,
         "%s  firmware: decode error @ frame %d (%s)\n",
         pctx->name, pctx->decoded_frames,
         err_str(status->error_code));
  pctx->decode_errors++;
  dump = 1;
 }

out:
 dev_dbg(delta->dev,
  "%s  firmware: decoding time(us)=%d\n", pctx->name,
  status->decode_time_in_us);

 return dump;
}
