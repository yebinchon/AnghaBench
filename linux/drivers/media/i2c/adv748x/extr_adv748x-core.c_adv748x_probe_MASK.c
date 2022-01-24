#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  page; struct adv748x_state* state; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  afe; TYPE_1__ txa; TYPE_1__ txb; struct i2c_client** i2c_clients; struct i2c_client* client; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 size_t ADV748X_PAGE_IO ; 
 int /*<<< orphan*/  ADV748X_PAGE_TXA ; 
 int /*<<< orphan*/  ADV748X_PAGE_TXB ; 
 int /*<<< orphan*/  ADV748X_PORT_TXA ; 
 int /*<<< orphan*/  ADV748X_PORT_TXB ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct adv748x_state*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct adv748x_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct adv748x_state*) ; 
 int FUNC9 (struct adv748x_state*) ; 
 int FUNC10 (struct adv748x_state*) ; 
 int FUNC11 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct adv748x_state*,char*) ; 
 struct adv748x_state* FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client)
{
	struct adv748x_state *state;
	int ret;

	/* Check if the adapter supports the needed features */
	if (!FUNC15(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	state = FUNC14(&client->dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC18(&state->mutex);

	state->dev = &client->dev;
	state->client = client;
	state->i2c_clients[ADV748X_PAGE_IO] = client;
	FUNC16(client, state);

	/*
	 * We can not use container_of to get back to the state with two TXs;
	 * Initialize the TXs's fields unconditionally on the endpoint
	 * presence to access them later.
	 */
	state->txa.state = state->txb.state = state;
	state->txa.page = ADV748X_PAGE_TXA;
	state->txb.page = ADV748X_PAGE_TXB;
	state->txa.port = ADV748X_PORT_TXA;
	state->txb.port = ADV748X_PORT_TXB;

	/* Discover and process ports declared by the Device tree endpoints */
	ret = FUNC10(state);
	if (ret) {
		FUNC13(state, "Failed to parse device tree");
		goto err_free_mutex;
	}

	/* Configure IO Regmap region */
	ret = FUNC2(state, ADV748X_PAGE_IO);
	if (ret) {
		FUNC13(state, "Error configuring IO regmap region");
		goto err_cleanup_dt;
	}

	ret = FUNC8(state);
	if (ret) {
		FUNC13(state, "Failed to identify chip");
		goto err_cleanup_dt;
	}

	/* Configure remaining pages as I2C clients with regmap access */
	ret = FUNC9(state);
	if (ret) {
		FUNC13(state, "Failed to setup client regmap pages");
		goto err_cleanup_clients;
	}

	/* SW reset ADV748X to its default values */
	ret = FUNC11(state);
	if (ret) {
		FUNC13(state, "Failed to reset hardware");
		goto err_cleanup_clients;
	}

	/* Initialise HDMI */
	ret = FUNC7(&state->hdmi);
	if (ret) {
		FUNC13(state, "Failed to probe HDMI");
		goto err_cleanup_clients;
	}

	/* Initialise AFE */
	ret = FUNC1(&state->afe);
	if (ret) {
		FUNC13(state, "Failed to probe AFE");
		goto err_cleanup_hdmi;
	}

	/* Initialise TXA */
	ret = FUNC4(state, &state->txa);
	if (ret) {
		FUNC13(state, "Failed to probe TXA");
		goto err_cleanup_afe;
	}

	/* Initialise TXB */
	ret = FUNC4(state, &state->txb);
	if (ret) {
		FUNC13(state, "Failed to probe TXB");
		goto err_cleanup_txa;
	}

	return 0;

err_cleanup_txa:
	FUNC3(&state->txa);
err_cleanup_afe:
	FUNC0(&state->afe);
err_cleanup_hdmi:
	FUNC6(&state->hdmi);
err_cleanup_clients:
	FUNC12(state);
err_cleanup_dt:
	FUNC5(state);
err_free_mutex:
	FUNC17(&state->mutex);

	return ret;
}