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
struct tls_crypto_info {int dummy; } ;
struct tls12_crypto_info_aes_gcm_128 {int /*<<< orphan*/  key; int /*<<< orphan*/  salt; int /*<<< orphan*/  rec_seq; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_TLS_ALG_AES_GCM_128 ; 
 scalar_t__ TLS_CIPHER_AES_GCM_128_KEY_SIZE ; 
 scalar_t__ TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE ; 
 scalar_t__ TLS_CIPHER_AES_GCM_128_SALT_SIZE ; 
 int /*<<< orphan*/  alg ; 
 int /*<<< orphan*/  encryption_key ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  tls_cmd ; 
 int /*<<< orphan*/  tls_implicit_iv ; 
 int /*<<< orphan*/  tls_rcd_sn ; 

__attribute__((used)) static void FUNC3(void *cmd,
					     struct tls_crypto_info *info,
					     __be64 *rcd_sn)
{
	struct tls12_crypto_info_aes_gcm_128 *crypto_info =
	    (struct tls12_crypto_info_aes_gcm_128 *)info;

	FUNC2(FUNC0(tls_cmd, cmd, tls_rcd_sn), crypto_info->rec_seq,
	       TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE);

	FUNC2(FUNC0(tls_cmd, cmd, tls_implicit_iv),
	       crypto_info->salt, TLS_CIPHER_AES_GCM_128_SALT_SIZE);
	FUNC2(FUNC0(tls_cmd, cmd, encryption_key),
	       crypto_info->key, TLS_CIPHER_AES_GCM_128_KEY_SIZE);

	/* in AES-GCM 128 we need to write the key twice */
	FUNC2(FUNC0(tls_cmd, cmd, encryption_key) +
		   TLS_CIPHER_AES_GCM_128_KEY_SIZE,
	       crypto_info->key, TLS_CIPHER_AES_GCM_128_KEY_SIZE);

	FUNC1(tls_cmd, cmd, alg, MLX5_TLS_ALG_AES_GCM_128);
}