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
struct file {int dummy; } ;
struct cobalt_stream {unsigned int input; int /*<<< orphan*/  sd; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV76XX_PAD_HDMI_PORT_A ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cobalt_stream*) ; 
 int /*<<< orphan*/  s_routing ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct cobalt_stream* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv_fh, unsigned int i)
{
	struct cobalt_stream *s = FUNC3(file);

	if (i >= 2)
		return -EINVAL;
	if (FUNC2(&s->q))
		return -EBUSY;
	s->input = i;

	FUNC0(s);

	if (s->input == 1) /* Test Pattern Generator */
		return 0;

	return FUNC1(s->sd, video, s_routing,
			ADV76XX_PAD_HDMI_PORT_A, 0, 0);
}