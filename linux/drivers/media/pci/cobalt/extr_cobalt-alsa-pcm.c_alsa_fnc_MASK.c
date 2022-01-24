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
struct vb2_buffer {int dummy; } ;
struct cobalt_stream {int /*<<< orphan*/  alsa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 scalar_t__ pcm_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb, void *priv)
{
	struct cobalt_stream *s = priv;
	unsigned char *p = FUNC4(vb, 0);
	int i;

	if (pcm_debug) {
		FUNC2("alsa: ");
		for (i = 0; i < 8 * 4; i++) {
			if (!(i & 3))
				FUNC1(" ");
			FUNC1("%02x", p[i]);
		}
		FUNC1("\n");
	}
	FUNC0(s->alsa,
			FUNC4(vb, 0),
			8 * 4,
			FUNC3(vb, 0) / (8 * 4));
	return 0;
}