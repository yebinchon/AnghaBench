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
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC1(u8 *msg, u32 length, u32 offset)
{
	u32 i;

	FUNC0(verbose, DST_CA_DEBUG, 0, " String=[ ");
	for (i = offset; i < length; i++)
		FUNC0(verbose, DST_CA_DEBUG, 0, "%02x ", msg[i]);
	FUNC0(verbose, DST_CA_DEBUG, 0, "]\n");

	return 0;
}