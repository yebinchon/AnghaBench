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
typedef  int u32 ;
typedef  int u16 ;
struct nic {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdio_lock; TYPE_1__* csr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdi_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  hw ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int mdi_read ; 
 int mdi_ready ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static u16 FUNC8(struct nic *nic, u32 addr, u32 dir, u32 reg, u16 data)
{
	u32 data_out = 0;
	unsigned int i;
	unsigned long flags;


	/*
	 * Stratus87247: we shouldn't be writing the MDI control
	 * register until the Ready bit shows True.  Also, since
	 * manipulation of the MDI control registers is a multi-step
	 * procedure it should be done under lock.
	 */
	FUNC4(&nic->mdio_lock, flags);
	for (i = 100; i; --i) {
		if (FUNC0(&nic->csr->mdi_ctrl) & mdi_ready)
			break;
		FUNC6(20);
	}
	if (FUNC7(!i)) {
		FUNC2(nic->netdev, "e100.mdio_ctrl won't go Ready\n");
		FUNC5(&nic->mdio_lock, flags);
		return 0;		/* No way to indicate timeout error */
	}
	FUNC1((reg << 16) | (addr << 21) | dir | data, &nic->csr->mdi_ctrl);

	for (i = 0; i < 100; i++) {
		FUNC6(20);
		if ((data_out = FUNC0(&nic->csr->mdi_ctrl)) & mdi_ready)
			break;
	}
	FUNC5(&nic->mdio_lock, flags);
	FUNC3(nic, hw, KERN_DEBUG, nic->netdev,
		     "%s:addr=%d, reg=%d, data_in=0x%04X, data_out=0x%04X\n",
		     dir == mdi_read ? "READ" : "WRITE",
		     addr, reg, data, data_out);
	return (u16)data_out;
}