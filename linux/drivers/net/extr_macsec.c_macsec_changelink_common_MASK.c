#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {size_t encoding_sa; int encrypt; int send_sci; int end_station; int scb; int /*<<< orphan*/ * sa; } ;
struct macsec_tx_sa {scalar_t__ active; } ;
struct macsec_secy {int operational; int protect_frames; int replay_protect; int /*<<< orphan*/  key_len; void* validate_frames; int /*<<< orphan*/  replay_window; struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {struct macsec_secy secy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFLA_MACSEC_CIPHER_SUITE ; 
 size_t IFLA_MACSEC_ENCODING_SA ; 
 size_t IFLA_MACSEC_ENCRYPT ; 
 size_t IFLA_MACSEC_ES ; 
 size_t IFLA_MACSEC_INC_SCI ; 
 size_t IFLA_MACSEC_PROTECT ; 
 size_t IFLA_MACSEC_REPLAY_PROTECT ; 
 size_t IFLA_MACSEC_SCB ; 
 size_t IFLA_MACSEC_VALIDATION ; 
 size_t IFLA_MACSEC_WINDOW ; 
#define  MACSEC_CIPHER_ID_GCM_AES_128 130 
#define  MACSEC_CIPHER_ID_GCM_AES_256 129 
#define  MACSEC_DEFAULT_CIPHER_ID 128 
 int /*<<< orphan*/  MACSEC_GCM_AES_128_SAK_LEN ; 
 int /*<<< orphan*/  MACSEC_GCM_AES_256_SAK_LEN ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 void* FUNC3 (struct nlattr*) ; 
 struct macsec_tx_sa* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				    struct nlattr *data[])
{
	struct macsec_secy *secy;
	struct macsec_tx_sc *tx_sc;

	secy = &FUNC0(dev)->secy;
	tx_sc = &secy->tx_sc;

	if (data[IFLA_MACSEC_ENCODING_SA]) {
		struct macsec_tx_sa *tx_sa;

		tx_sc->encoding_sa = FUNC3(data[IFLA_MACSEC_ENCODING_SA]);
		tx_sa = FUNC4(tx_sc->sa[tx_sc->encoding_sa]);

		secy->operational = tx_sa && tx_sa->active;
	}

	if (data[IFLA_MACSEC_WINDOW])
		secy->replay_window = FUNC1(data[IFLA_MACSEC_WINDOW]);

	if (data[IFLA_MACSEC_ENCRYPT])
		tx_sc->encrypt = !!FUNC3(data[IFLA_MACSEC_ENCRYPT]);

	if (data[IFLA_MACSEC_PROTECT])
		secy->protect_frames = !!FUNC3(data[IFLA_MACSEC_PROTECT]);

	if (data[IFLA_MACSEC_INC_SCI])
		tx_sc->send_sci = !!FUNC3(data[IFLA_MACSEC_INC_SCI]);

	if (data[IFLA_MACSEC_ES])
		tx_sc->end_station = !!FUNC3(data[IFLA_MACSEC_ES]);

	if (data[IFLA_MACSEC_SCB])
		tx_sc->scb = !!FUNC3(data[IFLA_MACSEC_SCB]);

	if (data[IFLA_MACSEC_REPLAY_PROTECT])
		secy->replay_protect = !!FUNC3(data[IFLA_MACSEC_REPLAY_PROTECT]);

	if (data[IFLA_MACSEC_VALIDATION])
		secy->validate_frames = FUNC3(data[IFLA_MACSEC_VALIDATION]);

	if (data[IFLA_MACSEC_CIPHER_SUITE]) {
		switch (FUNC2(data[IFLA_MACSEC_CIPHER_SUITE])) {
		case MACSEC_CIPHER_ID_GCM_AES_128:
		case MACSEC_DEFAULT_CIPHER_ID:
			secy->key_len = MACSEC_GCM_AES_128_SAK_LEN;
			break;
		case MACSEC_CIPHER_ID_GCM_AES_256:
			secy->key_len = MACSEC_GCM_AES_256_SAK_LEN;
			break;
		default:
			return -EINVAL;
		}
	}

	return 0;
}