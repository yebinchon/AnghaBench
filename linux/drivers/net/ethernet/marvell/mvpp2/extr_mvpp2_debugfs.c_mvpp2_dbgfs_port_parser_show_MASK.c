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
struct seq_file {struct mvpp2_port* private; } ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_port {int /*<<< orphan*/  id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 int MVPP2_PRS_TCAM_SRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 unsigned long FUNC1 (struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *unused)
{
	struct mvpp2_port *port = s->private;
	struct mvpp2 *priv = port->priv;
	struct mvpp2_prs_entry pe;
	unsigned long pmap;
	int i;

	for (i = 0; i < MVPP2_PRS_TCAM_SRAM_SIZE; i++) {
		FUNC0(port->priv, &pe, i);

		pmap = FUNC1(&pe);
		if (priv->prs_shadow[i].valid && FUNC3(port->id, &pmap))
			FUNC2(s, "%03d\n", i);
	}

	return 0;
}