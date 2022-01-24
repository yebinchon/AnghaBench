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
struct net_device {int dummy; } ;

/* Variables and functions */
 int MR_AI ; 
 int MR_IND ; 
 int MR_PB ; 
 int MR_RST ; 
 int /*<<< orphan*/  W5100_MR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	FUNC1(ndev, W5100_MR, MR_RST);
	FUNC0(5);
	FUNC1(ndev, W5100_MR, MR_PB | MR_AI | MR_IND);

	return 0;
}