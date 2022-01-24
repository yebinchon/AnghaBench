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
struct mei_txe_hw {int aliveness; int /*<<< orphan*/  slots; int /*<<< orphan*/  intr_cause; int /*<<< orphan*/  wait_aliveness_resp; int /*<<< orphan*/  readiness; } ;
struct mei_device {int recvd_hw_ready; scalar_t__ dev_state; int hbuf_is_ready; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  pg_event; int /*<<< orphan*/  wait_hw_ready; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  HHISR_REG ; 
 int /*<<< orphan*/  HISR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MEI_DEV_POWER_DOWN ; 
 scalar_t__ MEI_DEV_RESETTING ; 
 int /*<<< orphan*/  MEI_PG_EVENT_RECEIVED ; 
 int /*<<< orphan*/  SEC_IPC_HOST_INT_STATUS_REG ; 
 int /*<<< orphan*/  TXE_HBUF_DEPTH ; 
 int /*<<< orphan*/  TXE_INTR_ALIVENESS_BIT ; 
 int /*<<< orphan*/  TXE_INTR_IN_READY_BIT ; 
 int /*<<< orphan*/  TXE_INTR_OUT_DB_BIT ; 
 int /*<<< orphan*/  TXE_INTR_READINESS_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 void* FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*,struct list_head*) ; 
 int FUNC8 (struct mei_device*,struct list_head*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mei_device*,struct list_head*) ; 
 int FUNC10 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mei_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mei_device*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC23 (struct mei_device*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC26(int irq, void *dev_id)
{
	struct mei_device *dev = (struct mei_device *) dev_id;
	struct mei_txe_hw *hw = FUNC23(dev);
	struct list_head cmpl_list;
	s32 slots;
	int rets = 0;

	FUNC1(dev->dev, "irq thread: Interrupt Registers HHISR|HISR|SEC=%02X|%04X|%02X\n",
		FUNC11(hw, HHISR_REG),
		FUNC11(hw, HISR_REG),
		FUNC16(hw, SEC_IPC_HOST_INT_STATUS_REG));


	/* initialize our complete list */
	FUNC17(&dev->device_lock);
	FUNC0(&cmpl_list);

	if (FUNC19(FUNC22(dev->dev)))
		FUNC12(dev, true);

	/* show irq events */
	FUNC13(dev);

	hw->aliveness = FUNC10(dev);
	hw->readiness = FUNC14(dev);

	/* Readiness:
	 * Detection of TXE driver going through reset
	 * or TXE driver resetting the HECI interface.
	 */
	if (FUNC21(TXE_INTR_READINESS_BIT, &hw->intr_cause)) {
		FUNC1(dev->dev, "Readiness Interrupt was received...\n");

		/* Check if SeC is going through reset */
		if (FUNC15(hw->readiness)) {
			FUNC1(dev->dev, "we need to start the dev.\n");
			dev->recvd_hw_ready = true;
		} else {
			dev->recvd_hw_ready = false;
			if (dev->dev_state != MEI_DEV_RESETTING) {

				FUNC3(dev->dev, "FW not ready: resetting.\n");
				FUNC20(&dev->reset_work);
				goto end;

			}
		}
		FUNC25(&dev->wait_hw_ready);
	}

	/************************************************************/
	/* Check interrupt cause:
	 * Aliveness: Detection of SeC acknowledge of host request that
	 * it remain alive or host cancellation of that request.
	 */

	if (FUNC21(TXE_INTR_ALIVENESS_BIT, &hw->intr_cause)) {
		/* Clear the interrupt cause */
		FUNC1(dev->dev,
			"Aliveness Interrupt: Status: %d\n", hw->aliveness);
		dev->pg_event = MEI_PG_EVENT_RECEIVED;
		if (FUNC24(&hw->wait_aliveness_resp))
			FUNC25(&hw->wait_aliveness_resp);
	}


	/* Output Doorbell:
	 * Detection of SeC having sent output to host
	 */
	slots = FUNC4(dev);
	if (FUNC21(TXE_INTR_OUT_DB_BIT, &hw->intr_cause)) {
		/* Read from TXE */
		rets = FUNC8(dev, &cmpl_list, &slots);
		if (rets &&
		    (dev->dev_state != MEI_DEV_RESETTING &&
		     dev->dev_state != MEI_DEV_POWER_DOWN)) {
			FUNC2(dev->dev,
				"mei_irq_read_handler ret = %d.\n", rets);

			FUNC20(&dev->reset_work);
			goto end;
		}
	}
	/* Input Ready: Detection if host can write to SeC */
	if (FUNC21(TXE_INTR_IN_READY_BIT, &hw->intr_cause)) {
		dev->hbuf_is_ready = true;
		hw->slots = TXE_HBUF_DEPTH;
	}

	if (hw->aliveness && dev->hbuf_is_ready) {
		/* get the real register value */
		dev->hbuf_is_ready = FUNC6(dev);
		rets = FUNC9(dev, &cmpl_list);
		if (rets && rets != -EMSGSIZE)
			FUNC2(dev->dev, "mei_irq_write_handler ret = %d.\n",
				rets);
		dev->hbuf_is_ready = FUNC6(dev);
	}

	FUNC7(dev, &cmpl_list);

end:
	FUNC1(dev->dev, "interrupt thread end ret = %d\n", rets);

	FUNC18(&dev->device_lock);

	FUNC5(dev);
	return IRQ_HANDLED;
}