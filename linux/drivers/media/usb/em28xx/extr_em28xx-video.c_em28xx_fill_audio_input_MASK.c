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
struct v4l2_audio {unsigned int index; int /*<<< orphan*/  name; int /*<<< orphan*/  capability; } ;
struct em28xx {unsigned int* amux_map; scalar_t__ has_msp34xx; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EM28XX_AMUX_AUX 136 
#define  EM28XX_AMUX_CD 135 
#define  EM28XX_AMUX_LINE_IN 134 
#define  EM28XX_AMUX_MIC 133 
#define  EM28XX_AMUX_PCM_OUT 132 
#define  EM28XX_AMUX_PHONE 131 
#define  EM28XX_AMUX_UNUSED 130 
#define  EM28XX_AMUX_VIDEO 129 
#define  EM28XX_AMUX_VIDEO2 128 
 int /*<<< orphan*/  V4L2_AUDCAP_STEREO ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct em28xx *dev,
				   const char *s,
				   struct v4l2_audio *a,
				   unsigned int index)
{
	unsigned int idx = dev->amux_map[index];

	/*
	 * With msp3400, almost all mappings use the default (amux = 0).
	 * The only one may use a different value is WinTV USB2, where it
	 * can also be SCART1 input.
	 * As it is very doubtful that we would see new boards with msp3400,
	 * let's just reuse the existing switch.
	 */
	if (dev->has_msp34xx && idx != EM28XX_AMUX_UNUSED)
		idx = EM28XX_AMUX_LINE_IN;

	switch (idx) {
	case EM28XX_AMUX_VIDEO:
		FUNC1(a->name, "Television", sizeof(a->name));
		break;
	case EM28XX_AMUX_LINE_IN:
		FUNC1(a->name, "Line In", sizeof(a->name));
		break;
	case EM28XX_AMUX_VIDEO2:
		FUNC1(a->name, "Television alt", sizeof(a->name));
		break;
	case EM28XX_AMUX_PHONE:
		FUNC1(a->name, "Phone", sizeof(a->name));
		break;
	case EM28XX_AMUX_MIC:
		FUNC1(a->name, "Mic", sizeof(a->name));
		break;
	case EM28XX_AMUX_CD:
		FUNC1(a->name, "CD", sizeof(a->name));
		break;
	case EM28XX_AMUX_AUX:
		FUNC1(a->name, "Aux", sizeof(a->name));
		break;
	case EM28XX_AMUX_PCM_OUT:
		FUNC1(a->name, "PCM", sizeof(a->name));
		break;
	case EM28XX_AMUX_UNUSED:
	default:
		return -EINVAL;
	}
	a->index = index;
	a->capability = V4L2_AUDCAP_STEREO;

	FUNC0("%s: audio input index %d is '%s'\n",
			s, a->index, a->name);

	return 0;
}