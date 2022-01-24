#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_slave_event_eq {int prod; int /*<<< orphan*/  event_lock; struct mlx4_eqe* event_eqe; } ;
struct TYPE_3__ {int /*<<< orphan*/  slave_event_work; int /*<<< orphan*/  comm_wq; struct mlx4_slave_event_eq slave_eq; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_eqe {int owner; int /*<<< orphan*/  slave_id; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int SLAVE_EVENT_EQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_eqe*,struct mlx4_eqe*,int) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct mlx4_dev *dev, u8 slave, struct mlx4_eqe *eqe)
{
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_slave_event_eq *slave_eq = &priv->mfunc.master.slave_eq;
	struct mlx4_eqe *s_eqe;
	unsigned long flags;

	FUNC5(&slave_eq->event_lock, flags);
	s_eqe = &slave_eq->event_eqe[slave_eq->prod & (SLAVE_EVENT_EQ_SIZE - 1)];
	if ((!!(s_eqe->owner & 0x80)) ^
	    (!!(slave_eq->prod & SLAVE_EVENT_EQ_SIZE))) {
		FUNC3(dev, "Master failed to generate an EQE for slave: %d. No free EQE on slave events queue\n",
			  slave);
		FUNC6(&slave_eq->event_lock, flags);
		return;
	}

	FUNC1(s_eqe, eqe, sizeof(struct mlx4_eqe) - 1);
	s_eqe->slave_id = slave;
	/* ensure all information is written before setting the ownersip bit */
	FUNC0();
	s_eqe->owner = !!(slave_eq->prod & SLAVE_EVENT_EQ_SIZE) ? 0x0 : 0x80;
	++slave_eq->prod;

	FUNC4(priv->mfunc.master.comm_wq,
		   &priv->mfunc.master.slave_event_work);
	FUNC6(&slave_eq->event_lock, flags);
}