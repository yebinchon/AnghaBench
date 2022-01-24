#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct poll_table_struct {int dummy; } ;
struct file {struct ca8210_priv* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  up_fifo; int /*<<< orphan*/  readq; } ;
struct ca8210_priv {TYPE_1__ test; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __poll_t FUNC3(
	struct file *filp,
	struct poll_table_struct *ptable
)
{
	__poll_t return_flags = 0;
	struct ca8210_priv *priv = filp->private_data;

	FUNC1(filp, &priv->test.readq, ptable);
	if (!FUNC0(&priv->test.up_fifo))
		return_flags |= (EPOLLIN | EPOLLRDNORM);
	if (FUNC2(
		priv->test.readq,
		!FUNC0(&priv->test.up_fifo))) {
		return EPOLLERR;
	}
	return return_flags;
}