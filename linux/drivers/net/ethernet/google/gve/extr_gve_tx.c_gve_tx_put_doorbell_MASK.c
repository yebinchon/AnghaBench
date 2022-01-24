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
typedef  int /*<<< orphan*/  u32 ;
struct gve_queue_resources {int /*<<< orphan*/  db_index; } ;
struct gve_priv {int /*<<< orphan*/ * db_bar2; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct gve_priv *priv,
				       struct gve_queue_resources *q_resources,
				       u32 val)
{
	FUNC1(val, &priv->db_bar2[FUNC0(q_resources->db_index)]);
}