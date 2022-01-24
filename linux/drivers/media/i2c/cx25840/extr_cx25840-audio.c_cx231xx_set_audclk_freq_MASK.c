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
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ aud_input; int audclk_freq; } ;

/* Variables and functions */
 scalar_t__ CX25840_AUDIO_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct cx25840_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u32 freq)
{
	struct cx25840_state *state = FUNC2(FUNC1(client));

	if (state->aud_input != CX25840_AUDIO_SERIAL) {
		switch (freq) {
		case 32000:
			/* src3/4/6_ctl */
			/* 0x1.f77f = (4 * 28636360/8 * 2/455) / 32000 */
			FUNC0(client, 0x900, 0x0801f77f);
			FUNC0(client, 0x904, 0x0801f77f);
			FUNC0(client, 0x90c, 0x0801f77f);
			break;

		case 44100:
			/* src3/4/6_ctl */
			/* 0x1.6d59 = (4 * 28636360/8 * 2/455) / 44100 */
			FUNC0(client, 0x900, 0x08016d59);
			FUNC0(client, 0x904, 0x08016d59);
			FUNC0(client, 0x90c, 0x08016d59);
			break;

		case 48000:
			/* src3/4/6_ctl */
			/* 0x1.4faa = (4 * 28636360/8 * 2/455) / 48000 */
			FUNC0(client, 0x900, 0x08014faa);
			FUNC0(client, 0x904, 0x08014faa);
			FUNC0(client, 0x90c, 0x08014faa);
			break;
		}
	} else {
		switch (freq) {
		/* FIXME These cases make different assumptions about audclk */
		case 32000:
			/* src1_ctl */
			/* 0x1.0000 = 32000/32000 */
			FUNC0(client, 0x8f8, 0x08010000);

			/* src3/4/6_ctl */
			/* 0x2.0000 = 2 * (32000/32000) */
			FUNC0(client, 0x900, 0x08020000);
			FUNC0(client, 0x904, 0x08020000);
			FUNC0(client, 0x90c, 0x08020000);
			break;

		case 44100:
			/* src1_ctl */
			/* 0x1.60cd = 44100/32000 */
			FUNC0(client, 0x8f8, 0x080160cd);

			/* src3/4/6_ctl */
			/* 0x1.7385 = 2 * (32000/44100) */
			FUNC0(client, 0x900, 0x08017385);
			FUNC0(client, 0x904, 0x08017385);
			FUNC0(client, 0x90c, 0x08017385);
			break;

		case 48000:
			/* src1_ctl */
			/* 0x1.867c = 48000 / (2 * 28636360/8 * 2/455) */
			FUNC0(client, 0x8f8, 0x0801867c);

			/* src3/4/6_ctl */
			/* 0x1.4faa = (4 * 28636360/8 * 2/455) / 48000 */
			FUNC0(client, 0x900, 0x08014faa);
			FUNC0(client, 0x904, 0x08014faa);
			FUNC0(client, 0x90c, 0x08014faa);
			break;
		}
	}

	state->audclk_freq = freq;

	return 0;
}