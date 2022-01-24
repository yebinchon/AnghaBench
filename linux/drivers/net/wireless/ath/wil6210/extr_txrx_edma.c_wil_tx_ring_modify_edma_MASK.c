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
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct wil6210_priv* FUNC0 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static int FUNC2(struct wil6210_vif *vif, int ring_id,
				   int cid, int tid)
{
	struct wil6210_priv *wil = FUNC0(vif);

	FUNC1(wil, "ring modify is not supported for EDMA\n");

	return -EOPNOTSUPP;
}