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
struct pvr2_hdw {int active_stream_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_STOP_CAPTURE ; 
#define  pvr2_config_mpeg 129 
#define  pvr2_config_vbi 128 
 int FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*,int,int) ; 

int FUNC2(struct pvr2_hdw *hdw)
{
	int status;

	/* mask all interrupts */
	FUNC1(hdw, 0x0048, 0xffffffff);

	switch (hdw->active_stream_type) {
	case pvr2_config_vbi:
		status = FUNC0(hdw,CX2341X_ENC_STOP_CAPTURE,3,
					   0x01,0x01,0x14);
		break;
	case pvr2_config_mpeg:
		status = FUNC0(hdw,CX2341X_ENC_STOP_CAPTURE,3,
					   0x01,0,0x13);
		break;
	default: /* Unhandled cases for now */
		status = FUNC0(hdw,CX2341X_ENC_STOP_CAPTURE,3,
					   0x01,0,0x13);
		break;
	}

	return status;
}