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
struct mlx4_en_priv {int dummy; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC4(struct mlx4_en_priv *priv, u32 speed,
				   __be32 proto_cap)
{
	__be32 proto_admin = 0;

	if (!speed) { /* Speed = 0 ==> Reset Link modes */
		proto_admin = proto_cap;
		FUNC2(priv, "Speed was set to 0, Reset advertised Link Modes to default (%x)\n",
			FUNC0(proto_cap));
	} else {
		u32 ptys_link_modes = FUNC3(speed);

		proto_admin = FUNC1(ptys_link_modes) & proto_cap;
		FUNC2(priv, "Setting Speed to %d\n", speed);
	}
	return proto_admin;
}