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
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_sp_acl_tcam_vgroup {int patterns_count; struct mlxsw_sp_acl_tcam_pattern* patterns; struct mlxsw_afk_element_usage tmplt_elusage; scalar_t__ tmplt_elusage_set; } ;
struct mlxsw_sp_acl_tcam_pattern {int /*<<< orphan*/  elements_count; int /*<<< orphan*/  elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afk_element_usage*,struct mlxsw_afk_element_usage*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_afk_element_usage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlxsw_afk_element_usage*,struct mlxsw_afk_element_usage*) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp_acl_tcam_vgroup *vgroup,
				      struct mlxsw_afk_element_usage *elusage,
				      struct mlxsw_afk_element_usage *out)
{
	const struct mlxsw_sp_acl_tcam_pattern *pattern;
	int i;

	/* In case the template is set, we don't have to look up the pattern
	 * and just use the template.
	 */
	if (vgroup->tmplt_elusage_set) {
		FUNC1(out, &vgroup->tmplt_elusage, sizeof(*out));
		FUNC0(!FUNC3(elusage, out));
		return;
	}

	for (i = 0; i < vgroup->patterns_count; i++) {
		pattern = &vgroup->patterns[i];
		FUNC2(out, pattern->elements,
					     pattern->elements_count);
		if (FUNC3(elusage, out))
			return;
	}
	FUNC1(out, elusage, sizeof(*out));
}