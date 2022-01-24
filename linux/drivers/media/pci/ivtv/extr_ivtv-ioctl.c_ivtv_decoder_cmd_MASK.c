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
struct v4l2_decoder_cmd {int /*<<< orphan*/  cmd; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ivtv_open_id* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ivtv*,struct ivtv_open_id*,struct v4l2_decoder_cmd*,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_decoder_cmd *dec)
{
	struct ivtv_open_id *id = FUNC1(file->private_data);
	struct ivtv *itv = id->itv;

	FUNC0("VIDIOC_DECODER_CMD %d\n", dec->cmd);
	return FUNC2(itv, id, dec, false);
}