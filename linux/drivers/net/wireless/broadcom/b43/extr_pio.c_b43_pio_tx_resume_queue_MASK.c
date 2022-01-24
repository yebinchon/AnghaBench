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
struct b43_pio_txqueue {int rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PIO8_TXCTL ; 
 int B43_PIO8_TXCTL_SUSPREQ ; 
 int /*<<< orphan*/  B43_PIO_TXCTL ; 
 int B43_PIO_TXCTL_SUSPREQ ; 
 int FUNC0 (struct b43_pio_txqueue*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_pio_txqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_pio_txqueue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_pio_txqueue*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct b43_pio_txqueue *q)
{
	if (q->rev >= 8) {
		FUNC3(q, B43_PIO8_TXCTL,
				  FUNC1(q, B43_PIO8_TXCTL)
				  & ~B43_PIO8_TXCTL_SUSPREQ);
	} else {
		FUNC2(q, B43_PIO_TXCTL,
				  FUNC0(q, B43_PIO_TXCTL)
				  & ~B43_PIO_TXCTL_SUSPREQ);
	}
}