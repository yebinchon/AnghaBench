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
struct pt1_adapter {int /*<<< orphan*/  demod_i2c_client; int /*<<< orphan*/  tuner_i2c_client; int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pt1_adapter *adap)
{
	FUNC1(adap->fe);
	FUNC0(adap->tuner_i2c_client);
	FUNC0(adap->demod_i2c_client);
}