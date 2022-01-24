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
typedef  int u32 ;
struct mvpp2_rss_table {int /*<<< orphan*/ * indir; } ;
struct mvpp2_port {struct mvpp2* priv; } ;
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP22_RSS_INDEX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MVPP22_RSS_TABLE_ENTRIES ; 
 int /*<<< orphan*/  MVPP22_RSS_TABLE_ENTRY ; 
 int FUNC2 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port,
				  struct mvpp2_rss_table *table,
				  u32 rss_ctx)
{
	struct mvpp2 *priv = port->priv;
	int i;

	for (i = 0; i < MVPP22_RSS_TABLE_ENTRIES; i++) {
		u32 sel = FUNC0(rss_ctx) |
			  FUNC1(i);
		FUNC3(priv, MVPP22_RSS_INDEX, sel);

		FUNC3(priv, MVPP22_RSS_TABLE_ENTRY,
			    FUNC2(port, table->indir[i]));
	}
}