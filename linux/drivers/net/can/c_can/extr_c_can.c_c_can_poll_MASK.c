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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct c_can_priv {int last_status; int (* read_reg ) (struct c_can_priv*,int /*<<< orphan*/ ) ;scalar_t__ type; TYPE_1__ can; int /*<<< orphan*/  (* write_reg ) (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sie_pending; } ;

/* Variables and functions */
 scalar_t__ BOSCH_D_CAN ; 
 scalar_t__ CAN_STATE_BUS_OFF ; 
 int /*<<< orphan*/  C_CAN_BUS_OFF ; 
 int /*<<< orphan*/  C_CAN_ERROR_PASSIVE ; 
 int /*<<< orphan*/  C_CAN_ERROR_WARNING ; 
 int /*<<< orphan*/  C_CAN_NO_ERROR ; 
 int /*<<< orphan*/  C_CAN_STS_REG ; 
 int LEC_MASK ; 
 int /*<<< orphan*/  LEC_UNUSED ; 
 int STATUS_BOFF ; 
 int STATUS_EPASS ; 
 int STATUS_EWARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*,int) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct c_can_priv* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct c_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct napi_struct *napi, int quota)
{
	struct net_device *dev = napi->dev;
	struct c_can_priv *priv = FUNC8(dev);
	u16 curr, last = priv->last_status;
	int work_done = 0;

	/* Only read the status register if a status interrupt was pending */
	if (FUNC0(&priv->sie_pending, 0)) {
		priv->last_status = curr = priv->read_reg(priv, C_CAN_STS_REG);
		/* Ack status on C_CAN. D_CAN is self clearing */
		if (priv->type != BOSCH_D_CAN)
			priv->write_reg(priv, C_CAN_STS_REG, LEC_UNUSED);
	} else {
		/* no change detected ... */
		curr = last;
	}

	/* handle state changes */
	if ((curr & STATUS_EWARN) && (!(last & STATUS_EWARN))) {
		FUNC7(dev, "entered error warning state\n");
		work_done += FUNC4(dev, C_CAN_ERROR_WARNING);
	}

	if ((curr & STATUS_EPASS) && (!(last & STATUS_EPASS))) {
		FUNC7(dev, "entered error passive state\n");
		work_done += FUNC4(dev, C_CAN_ERROR_PASSIVE);
	}

	if ((curr & STATUS_BOFF) && (!(last & STATUS_BOFF))) {
		FUNC7(dev, "entered bus off state\n");
		work_done += FUNC4(dev, C_CAN_BUS_OFF);
		goto end;
	}

	/* handle bus recovery events */
	if ((!(curr & STATUS_BOFF)) && (last & STATUS_BOFF)) {
		FUNC7(dev, "left bus off state\n");
		work_done += FUNC4(dev, C_CAN_ERROR_PASSIVE);
	}

	if ((!(curr & STATUS_EPASS)) && (last & STATUS_EPASS)) {
		FUNC7(dev, "left error passive state\n");
		work_done += FUNC4(dev, C_CAN_ERROR_WARNING);
	}

	if ((!(curr & STATUS_EWARN)) && (last & STATUS_EWARN)) {
		FUNC7(dev, "left error warning state\n");
		work_done += FUNC4(dev, C_CAN_NO_ERROR);
	}

	/* handle lec errors on the bus */
	work_done += FUNC3(dev, curr & LEC_MASK);

	/* Handle Tx/Rx events. We do this unconditionally */
	work_done += FUNC1(dev, (quota - work_done));
	FUNC2(dev);

end:
	if (work_done < quota) {
		FUNC6(napi, work_done);
		/* enable all IRQs if we are not in bus off state */
		if (priv->can.state != CAN_STATE_BUS_OFF)
			FUNC5(priv, true);
	}

	return work_done;
}