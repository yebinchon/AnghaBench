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
typedef  int u32 ;
struct vp7045_fe_state {int /*<<< orphan*/  d; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, u32 *unc)
{
	struct vp7045_fe_state *state = fe->demodulator_priv;
	*unc = (FUNC0(state->d, 0x10) << 8) |
		    FUNC0(state->d, 0x11);
	return 0;
}