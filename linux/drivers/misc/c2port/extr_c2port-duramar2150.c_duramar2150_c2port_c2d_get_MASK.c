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
struct c2port_device {int dummy; } ;

/* Variables and functions */
 int C2D ; 
 int /*<<< orphan*/  DATA_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct c2port_device *dev)
{
	return FUNC0(DATA_PORT) & C2D;
}