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
struct scp_struct {int /*<<< orphan*/  sysbus; void* iscp; } ;
struct scb_struct {int dummy; } ;
struct priv {struct scb_struct* scb; scalar_t__ reseted; struct iscp_struct* iscp; struct scp_struct* scp; scalar_t__ base; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  mem_start; } ;
struct iscp_struct {int busy; void* scb_base; int /*<<< orphan*/  scb_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SCP_DEFAULT_ADDRESS ; 
 int /*<<< orphan*/  SYSBUSVAL ; 
 struct iscp_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scb_struct*) ; 
 void* FUNC3 (struct iscp_struct*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct priv *p = FUNC5(dev);

	FUNC8();
	FUNC0(1);

	p->scp	= (struct scp_struct *)	(p->base + SCP_DEFAULT_ADDRESS);
	p->iscp	= (struct iscp_struct *) FUNC1(dev->mem_start);
	p->scb  = (struct scb_struct *)  ((char *)p->iscp + sizeof(struct iscp_struct));

	FUNC4((char *) p->iscp,0,sizeof(struct iscp_struct));
	FUNC4((char *) p->scp ,0,sizeof(struct scp_struct));

	p->scp->iscp = FUNC3(p->iscp);
	p->scp->sysbus = SYSBUSVAL;
	p->iscp->scb_offset = FUNC2(p->scb);
	p->iscp->scb_base = FUNC3(FUNC1(dev->mem_start));

	p->iscp->busy = 1;
	FUNC8();
	FUNC7();

	FUNC0(1);

	if(p->iscp->busy)
		FUNC6("%s: Init-Problems (alloc).\n",dev->name);

	p->reseted = 0;

	FUNC4((char *)p->scb,0,sizeof(struct scb_struct));
}