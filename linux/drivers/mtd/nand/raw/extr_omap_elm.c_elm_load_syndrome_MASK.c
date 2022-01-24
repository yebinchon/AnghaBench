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
typedef  int u8 ;
typedef  int u32 ;
struct elm_info {int ecc_steps; int bch_type; int /*<<< orphan*/  ecc_syndrome_size; } ;
struct elm_errorvec {scalar_t__ error_reported; } ;

/* Variables and functions */
#define  BCH16_ECC 130 
#define  BCH4_ECC 129 
#define  BCH8_ECC 128 
 int ELM_SYNDROME_FRAGMENT_0 ; 
 int SYNDROME_FRAGMENT_REG_SIZE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct elm_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct elm_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct elm_info *info,
		struct elm_errorvec *err_vec, u8 *ecc)
{
	int i, offset;
	u32 val;

	for (i = 0; i < info->ecc_steps; i++) {

		/* Check error reported */
		if (err_vec[i].error_reported) {
			FUNC1(info, i, true);
			offset = ELM_SYNDROME_FRAGMENT_0 +
				SYNDROME_FRAGMENT_REG_SIZE * i;
			switch (info->bch_type) {
			case BCH8_ECC:
				/* syndrome fragment 0 = ecc[9-12B] */
				val = FUNC0(*(u32 *) &ecc[9]);
				FUNC2(info, offset, val);

				/* syndrome fragment 1 = ecc[5-8B] */
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[5]);
				FUNC2(info, offset, val);

				/* syndrome fragment 2 = ecc[1-4B] */
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[1]);
				FUNC2(info, offset, val);

				/* syndrome fragment 3 = ecc[0B] */
				offset += 4;
				val = ecc[0];
				FUNC2(info, offset, val);
				break;
			case BCH4_ECC:
				/* syndrome fragment 0 = ecc[20-52b] bits */
				val = (FUNC0(*(u32 *) &ecc[3]) >> 4) |
					((ecc[2] & 0xf) << 28);
				FUNC2(info, offset, val);

				/* syndrome fragment 1 = ecc[0-20b] bits */
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[0]) >> 12;
				FUNC2(info, offset, val);
				break;
			case BCH16_ECC:
				val = FUNC0(*(u32 *) &ecc[22]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[18]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[14]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[10]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[6]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[2]);
				FUNC2(info, offset, val);
				offset += 4;
				val = FUNC0(*(u32 *) &ecc[0]) >> 16;
				FUNC2(info, offset, val);
				break;
			default:
				FUNC3("invalid config bch_type\n");
			}
		}

		/* Update ecc pointer with ecc byte size */
		ecc += info->ecc_syndrome_size;
	}
}