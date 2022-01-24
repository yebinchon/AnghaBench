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
typedef  int u8 ;
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_FIFOCON ; 
 int CIR_FIFOCON_RXFIFOCLR ; 
 int FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nvt_dev *nvt)
{
	u8 val = FUNC0(nvt, CIR_FIFOCON);
	FUNC1(nvt, val | CIR_FIFOCON_RXFIFOCLR, CIR_FIFOCON);
}