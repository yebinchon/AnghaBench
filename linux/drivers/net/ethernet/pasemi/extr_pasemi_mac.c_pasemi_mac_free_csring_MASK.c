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
struct pasemi_mac_csring {int /*<<< orphan*/  fun; int /*<<< orphan*/  chan; int /*<<< orphan*/ * events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pasemi_mac_csring *csring)
{
	FUNC4(&csring->chan);
	FUNC1(csring->events[0]);
	FUNC1(csring->events[1]);
	FUNC3(&csring->chan);
	FUNC0(&csring->chan);
	FUNC2(csring->fun);
}