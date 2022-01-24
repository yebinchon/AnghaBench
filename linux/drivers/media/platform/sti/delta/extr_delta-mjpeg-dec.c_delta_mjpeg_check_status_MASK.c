#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jpeg_decode_return_params_t {scalar_t__ error_code; int /*<<< orphan*/  decode_time_in_us; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  decode_errors; int /*<<< orphan*/  decoded_frames; int /*<<< orphan*/  stream_errors; struct delta_dev* dev; } ;

/* Variables and functions */
 scalar_t__ JPEG_DECODER_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct delta_ctx *pctx,
				     struct jpeg_decode_return_params_t *status)
{
	struct delta_dev *delta = pctx->dev;
	bool dump = false;

	if (status->error_code == JPEG_DECODER_NO_ERROR)
		goto out;

	if (FUNC3(status->error_code)) {
		FUNC1(delta->dev,
				     "%s  firmware: stream error @ frame %d (%s)\n",
				     pctx->name, pctx->decoded_frames,
				     FUNC2(status->error_code));
		pctx->stream_errors++;
	} else {
		FUNC1(delta->dev,
				     "%s  firmware: decode error @ frame %d (%s)\n",
				     pctx->name, pctx->decoded_frames,
				     FUNC2(status->error_code));
		pctx->decode_errors++;
		dump = true;
	}

out:
	FUNC0(delta->dev,
		"%s  firmware: decoding time(us)=%d\n", pctx->name,
		status->decode_time_in_us);

	return dump;
}