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
struct xircom_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int NUMDESCRIPTORS ; 
 int /*<<< orphan*/  PCI_POWERMGMT ; 
 int /*<<< orphan*/ * bufferoffsets ; 
 int /*<<< orphan*/  FUNC0 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xircom_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct xircom_private*) ; 

__attribute__((used)) static void FUNC13(struct xircom_private *card)
{
	unsigned long flags;
	int i;

	/* disable all powermanagement */
	FUNC7(card->pdev, PCI_POWERMGMT, 0x0000);

	FUNC8(card);

	FUNC9(&card->lock, flags);


	FUNC1(card);
	FUNC4(card);
	FUNC3(card);
	FUNC0(card);
	FUNC2(card);

	/* The card can have received packets already, read them away now */
	for (i=0;i<NUMDESCRIPTORS;i++)
		FUNC5(card->dev,card,i,bufferoffsets[i]);


	FUNC10(&card->lock, flags);
	FUNC11(card);
	FUNC12(card);
	FUNC6(card->dev);
}