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
struct mvpp2_cls_flow_entry {int index; } ;
struct mvpp2_cls_flow {int /*<<< orphan*/  flow_id; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVPP22_CLS_ENGINE_C2 ; 
 int /*<<< orphan*/  MVPP22_CLS_ENGINE_C3HA ; 
 int /*<<< orphan*/  MVPP22_CLS_LU_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MVPP2_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_cls_flow_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_cls_flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_cls_flow_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_cls_flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_cls_flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_cls_flow_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_cls_flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2*,int /*<<< orphan*/ ,struct mvpp2_cls_flow_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct mvpp2*,struct mvpp2_cls_flow_entry*) ; 

__attribute__((used)) static void FUNC14(struct mvpp2 *priv,
				const struct mvpp2_cls_flow *flow)
{
	struct mvpp2_cls_flow_entry fe;
	int i, pri = 0;

	/* Assign default values to all entries in the flow */
	for (i = FUNC2(flow->flow_id);
	     i <= FUNC4(flow->flow_id); i++) {
		FUNC5(&fe, 0, sizeof(fe));
		fe.index = i;
		FUNC11(&fe, pri++);

		if (i == FUNC4(flow->flow_id))
			FUNC7(&fe, 1);

		FUNC13(priv, &fe);
	}

	/* RSS config C2 lookup */
	FUNC12(priv, FUNC1(flow->flow_id),
			    &fe);

	FUNC6(&fe, MVPP22_CLS_ENGINE_C2);
	FUNC10(&fe, true);
	FUNC8(&fe, MVPP22_CLS_LU_TYPE_ALL);

	/* Add all ports */
	for (i = 0; i < MVPP2_MAX_PORTS; i++)
		FUNC9(&fe, FUNC0(i));

	FUNC13(priv, &fe);

	/* C3Hx lookups */
	for (i = 0; i < MVPP2_MAX_PORTS; i++) {
		FUNC12(priv,
				    FUNC3(i, flow->flow_id),
				    &fe);

		/* Set a default engine. Will be overwritten when setting the
		 * real HEK parameters
		 */
		FUNC6(&fe, MVPP22_CLS_ENGINE_C3HA);
		FUNC10(&fe, true);
		FUNC9(&fe, FUNC0(i));

		FUNC13(priv, &fe);
	}
}