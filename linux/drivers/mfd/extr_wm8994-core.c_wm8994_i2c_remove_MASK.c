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
struct wm8994 {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct wm8994* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8994*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c)
{
	struct wm8994 *wm8994 = FUNC0(i2c);

	FUNC1(wm8994);

	return 0;
}