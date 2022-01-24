#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct rave_sp {TYPE_3__* variant; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  crc_calculated ;
struct TYPE_6__ {TYPE_2__* checksum; } ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/  (* subroutine ) (unsigned char const*,size_t const,unsigned char*) ;} ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int RAVE_SP_CHECKSUM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,unsigned char const*,size_t,int) ; 
 scalar_t__ FUNC3 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (struct rave_sp*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct rave_sp*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*,size_t const,unsigned char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct rave_sp *sp,
				  const unsigned char *data,
				  size_t length)
{
	const size_t checksum_length = sp->variant->checksum->length;
	const size_t payload_length  = length - checksum_length;
	const u8 *crc_reported       = &data[payload_length];
	struct device *dev           = &sp->serdev->dev;
	u8 crc_calculated[RAVE_SP_CHECKSUM_SIZE];

	if (FUNC7(checksum_length > sizeof(crc_calculated))) {
		FUNC0(dev, "Checksum too long, dropping\n");
		return;
	}

	FUNC2("rave-sp rx: ", DUMP_PREFIX_NONE,
			     16, 1, data, length, false);

	if (FUNC7(length <= checksum_length)) {
		FUNC0(dev, "Dropping short frame\n");
		return;
	}

	sp->variant->checksum->subroutine(data, payload_length,
					  crc_calculated);

	if (FUNC1(crc_calculated, crc_reported, checksum_length)) {
		FUNC0(dev, "Dropping bad frame\n");
		return;
	}

	if (FUNC3(data[0]))
		FUNC4(sp, data, length);
	else
		FUNC5(sp, data, length);
}