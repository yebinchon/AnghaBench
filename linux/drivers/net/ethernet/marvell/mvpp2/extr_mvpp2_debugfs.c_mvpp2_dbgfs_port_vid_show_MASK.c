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
typedef  unsigned char u16 ;
struct seq_file {struct mvpp2_port* private; } ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_port {int /*<<< orphan*/  id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ; 
 unsigned long FUNC4 (struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *unused)
{
	struct mvpp2_port *port = s->private;
	unsigned char byte[2], enable[2];
	struct mvpp2 *priv = port->priv;
	struct mvpp2_prs_entry pe;
	unsigned long pmap;
	u16 rvid;
	int tid;

	for (tid = FUNC0(port->id);
	     tid <= FUNC1(port->id); tid++) {
		FUNC2(priv, &pe, tid);

		pmap = FUNC4(&pe);

		if (!priv->prs_shadow[tid].valid)
			continue;

		if (!FUNC6(port->id, &pmap))
			continue;

		FUNC3(&pe, 2, &byte[0], &enable[0]);
		FUNC3(&pe, 3, &byte[1], &enable[1]);

		rvid = ((byte[0] & 0xf) << 8) + byte[1];

		FUNC5(s, "%u\n", rvid);
	}

	return 0;
}