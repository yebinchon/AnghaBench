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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;
struct bt819 {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct bt819 *decoder, u8 reg)
{
	struct i2c_client *client = FUNC1(&decoder->sd);

	return FUNC0(client, reg);
}