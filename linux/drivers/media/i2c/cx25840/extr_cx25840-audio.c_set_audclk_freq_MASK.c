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
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 scalar_t__ FUNC5 (struct cx25840_state*) ; 
 scalar_t__ FUNC6 (struct cx25840_state*) ; 
 scalar_t__ FUNC7 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client, u32 freq)
{
	struct cx25840_state *state = FUNC8(FUNC4(client));

	if (freq != 32000 && freq != 44100 && freq != 48000)
		return -EINVAL;

	if (FUNC5(state))
		return FUNC0(client, freq);

	if (FUNC6(state))
		return FUNC1(client, freq);

	if (FUNC7(state))
		return FUNC2(client, freq);

	return FUNC3(client, freq);
}