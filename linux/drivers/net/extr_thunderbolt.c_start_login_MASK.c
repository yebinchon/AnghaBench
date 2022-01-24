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
struct tbnet {int login_sent; int login_received; int /*<<< orphan*/  login_work; int /*<<< orphan*/  connection_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_long_wq ; 

__attribute__((used)) static void FUNC4(struct tbnet *net)
{
	FUNC1(&net->connection_lock);
	net->login_sent = false;
	net->login_received = false;
	FUNC2(&net->connection_lock);

	FUNC3(system_long_wq, &net->login_work,
			   FUNC0(1000));
}