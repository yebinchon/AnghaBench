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
struct r820t_sect_type {int dummy; } ;
struct r820t_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct r820t_priv*,struct r820t_sect_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct r820t_priv*) ; 

__attribute__((used)) static int FUNC2(struct r820t_priv *priv, struct r820t_sect_type *iq_pont)
{
	int rc;

	FUNC1(priv);

	/*
	 * search surrounding points from previous point
	 * try (x-1), (x), (x+1) columns, and find min IMR result point
	 */
	rc = FUNC0(priv, iq_pont);
	if (rc < 0)
		return rc;

	return 0;
}