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
struct wiphy {int dummy; } ;
struct regulatory_request {char* alpha2; int /*<<< orphan*/  initiator; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  drvr; } ;
struct brcmf_fil_country_le {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef  char s32 ;
typedef  int /*<<< orphan*/  ccreq ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char,char) ; 
 char FUNC2 (struct brcmf_if*,char*,struct brcmf_fil_country_le*,int) ; 
 char FUNC3 (struct brcmf_if*,char*,struct brcmf_fil_country_le*,int) ; 
 struct brcmf_if* FUNC4 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_cfg80211_info*) ; 
 char FUNC6 (int /*<<< orphan*/ ,char*,struct brcmf_fil_country_le*) ; 
 struct brcmf_cfg80211_info* FUNC7 (struct wiphy*) ; 

__attribute__((used)) static void FUNC8(struct wiphy *wiphy,
					struct regulatory_request *req)
{
	struct brcmf_cfg80211_info *cfg = FUNC7(wiphy);
	struct brcmf_if *ifp = FUNC4(cfg->pub, 0);
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_fil_country_le ccreq;
	s32 err;
	int i;

	/* The country code gets set to "00" by default at boot, ignore */
	if (req->alpha2[0] == '0' && req->alpha2[1] == '0')
		return;

	/* ignore non-ISO3166 country codes */
	for (i = 0; i < 2; i++)
		if (req->alpha2[i] < 'A' || req->alpha2[i] > 'Z') {
			FUNC0(drvr, "not an ISO3166 code (0x%02x 0x%02x)\n",
				 req->alpha2[0], req->alpha2[1]);
			return;
		}

	FUNC1(TRACE, "Enter: initiator=%d, alpha=%c%c\n", req->initiator,
		  req->alpha2[0], req->alpha2[1]);

	err = FUNC2(ifp, "country", &ccreq, sizeof(ccreq));
	if (err) {
		FUNC0(drvr, "Country code iovar returned err = %d\n", err);
		return;
	}

	err = FUNC6(ifp->drvr, req->alpha2, &ccreq);
	if (err)
		return;

	err = FUNC3(ifp, "country", &ccreq, sizeof(ccreq));
	if (err) {
		FUNC0(drvr, "Firmware rejected country setting\n");
		return;
	}
	FUNC5(cfg);
}