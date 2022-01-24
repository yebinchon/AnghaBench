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
struct mlx5_cmd_msg {struct mlx5_cmd_mailbox* next; } ;
struct mlx5_cmd_mailbox {struct mlx5_cmd_mailbox* next; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_cmd_msg*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_cmd_msg *msg)
{
	struct mlx5_cmd_mailbox *next = msg->next;
	int n = FUNC1(msg);
	int i = 0;

	for (i = 0; i < n && next; i++)  {
		FUNC0(next->buf);
		next = next->next;
	}
}