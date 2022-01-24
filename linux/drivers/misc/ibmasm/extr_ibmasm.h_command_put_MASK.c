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
struct command {int /*<<< orphan*/  kref; int /*<<< orphan*/ * lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  ibmasm_free_command ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct command *cmd)
{
	unsigned long flags;
	spinlock_t *lock = cmd->lock;

	FUNC1(lock, flags);
	FUNC0(&cmd->kref, ibmasm_free_command);
	FUNC2(lock, flags);
}