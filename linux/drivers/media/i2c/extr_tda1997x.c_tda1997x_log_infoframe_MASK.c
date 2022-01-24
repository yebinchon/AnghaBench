#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union hdmi_infoframe {int dummy; } hdmi_infoframe ;
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,union hdmi_infoframe*) ; 
 int FUNC1 (union hdmi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct v4l2_subdev*,int,int,int /*<<< orphan*/ *) ; 
 struct tda1997x_state* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int addr)
{
	struct tda1997x_state *state = FUNC3(sd);
	union hdmi_infoframe frame;
	u8 buffer[40];
	int len, err;

	/* read data */
	len = FUNC2(sd, addr, sizeof(buffer), buffer);
	FUNC4(1, debug, sd, "infoframe: addr=%d len=%d\n", addr, len);
	err = FUNC1(&frame, buffer, sizeof(buffer));
	if (err) {
		FUNC5(state->client,
			"failed parsing %d byte infoframe: 0x%04x/0x%02x\n",
			len, addr, buffer[0]);
		return err;
	}
	FUNC0(KERN_INFO, &state->client->dev, &frame);

	return 0;
}