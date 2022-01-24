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
struct jme_adapter {scalar_t__ phylink; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  linkch_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC9(netdev);

	FUNC11(netdev);
	FUNC10(netdev);

	FUNC8(jme);
	FUNC3(jme);

	FUNC0(jme);

	FUNC12(&jme->linkch_task);
	FUNC12(&jme->txclean_task);
	FUNC12(&jme->rxclean_task);
	FUNC12(&jme->rxempty_task);

	FUNC1(jme);
	FUNC2(jme);
	FUNC7(jme);
	FUNC4(jme);
	FUNC5(jme);
	jme->phylink = 0;
	FUNC6(jme);

	return 0;
}