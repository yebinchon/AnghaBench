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
typedef  int uint64_t ;
typedef  int u64 ;
typedef  size_t u32 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_mib_desc {size_t offset; int size; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;

/* Variables and functions */
 size_t FUNC0 (struct mt7530_mib_desc*) ; 
 size_t FUNC1 (int) ; 
 struct mt7530_mib_desc* mt7530_mib ; 
 int FUNC2 (struct mt7530_priv*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct dsa_switch *ds, int port,
			 uint64_t *data)
{
	struct mt7530_priv *priv = ds->priv;
	const struct mt7530_mib_desc *mib;
	u32 reg, i;
	u64 hi;

	for (i = 0; i < FUNC0(mt7530_mib); i++) {
		mib = &mt7530_mib[i];
		reg = FUNC1(port) + mib->offset;

		data[i] = FUNC2(priv, reg);
		if (mib->size == 2) {
			hi = FUNC2(priv, reg + 4);
			data[i] |= hi << 32;
		}
	}
}