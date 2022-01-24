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

/* Variables and functions */
 scalar_t__ CA8210_MAC_WORKAROUNDS ; 
 int /*<<< orphan*/  CA8210_SFR_MACCON ; 
 int CA8210_SPI_BUF_SIZE ; 
 int MAC_INVALID_PARAMETER ; 
 int PHY_CURRENT_CHANNEL ; 
 int SPI_MLME_ASSOCIATE_REQUEST ; 
 int SPI_MLME_RESET_REQUEST ; 
 int SPI_MLME_SET_CONFIRM ; 
 int SPI_MLME_SET_REQUEST ; 
 int SPI_MLME_START_REQUEST ; 
 int SPI_TDME_SET_REQUEST ; 
 int TDME_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int*,int,void*) ; 
 int FUNC1 (int,void*) ; 
 int FUNC2 (int,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC4(u8 *buf, void *device_ref)
{
	int ret;
	u8 response[CA8210_SPI_BUF_SIZE];

	if (buf[0] == SPI_MLME_SET_REQUEST) {
		ret = FUNC2(buf[2], buf[4], buf + 5);
		if (ret) {
			response[0]  = SPI_MLME_SET_CONFIRM;
			response[1] = 3;
			response[2] = MAC_INVALID_PARAMETER;
			response[3] = buf[2];
			response[4] = buf[3];
			if (&cascoda_api_upstream)
				FUNC0(response, 5, device_ref);
			return ret;
		}
	}
	if (buf[0] == SPI_MLME_ASSOCIATE_REQUEST) {
		return FUNC1(buf[2], device_ref);
	} else if (buf[0] == SPI_MLME_START_REQUEST) {
		return FUNC1(buf[4], device_ref);
	} else if (
		(buf[0] == SPI_MLME_SET_REQUEST) &&
		(buf[2] == PHY_CURRENT_CHANNEL)
	) {
		return FUNC1(buf[5], device_ref);
	} else if (
		(buf[0] == SPI_TDME_SET_REQUEST) &&
		(buf[2] == TDME_CHANNEL)
	) {
		return FUNC1(buf[4], device_ref);
	} else if (
		(CA8210_MAC_WORKAROUNDS) &&
		(buf[0] == SPI_MLME_RESET_REQUEST) &&
		(buf[2] == 1)
	) {
		/* reset COORD Bit for Channel Filtering as Coordinator */
		return FUNC3(
			0,
			CA8210_SFR_MACCON,
			0,
			device_ref
		);
	}
	return 0;
}