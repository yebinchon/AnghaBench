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
struct w5100_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct w5100_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct w5100_priv *priv)
{
	int i;

	/* Configure internal RX memory as 16K RX buffer and
	 * internal TX memory as 16K TX buffer
	 */
	FUNC2(priv, FUNC0(0), 0x10);
	FUNC2(priv, FUNC1(0), 0x10);

	for (i = 1; i < 8; i++) {
		FUNC2(priv, FUNC0(i), 0);
		FUNC2(priv, FUNC1(i), 0);
	}
}