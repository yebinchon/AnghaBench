
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_9__ {int flags; } ;
struct xfrm_state {TYPE_5__ props; TYPE_4__ xso; TYPE_2__* aead; struct crypto_aead* data; } ;
struct TYPE_8__ {scalar_t__ overlap; int esn; scalar_t__ trigger; } ;
struct mlx5e_ipsec_sa_entry {int handle; TYPE_3__ esn_state; struct xfrm_state* x; } ;
struct aes_gcm_keymat {unsigned int key_len; int icv_len; int salt; int seq_iv; int * aes_key; } ;
struct TYPE_6__ {struct aes_gcm_keymat aes_gcm; } ;
struct mlx5_accel_esp_xfrm_attrs {int flags; int action; int keymat_type; int sa_handle; int esn; TYPE_1__ keymat; } ;
struct crypto_aead {int dummy; } ;
struct aead_geniv_ctx {int salt; } ;
struct TYPE_7__ {int alg_key_len; int alg_icv_len; int * alg_key; } ;


 int MLX5_ACCEL_ESP_ACTION_DECRYPT ;
 int MLX5_ACCEL_ESP_ACTION_ENCRYPT ;
 int MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP ;
 int MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED ;
 int MLX5_ACCEL_ESP_FLAGS_TRANSPORT ;
 int MLX5_ACCEL_ESP_FLAGS_TUNNEL ;
 int MLX5_ACCEL_ESP_KEYMAT_AES_GCM ;
 scalar_t__ XFRM_MODE_TRANSPORT ;
 int XFRM_OFFLOAD_INBOUND ;
 struct aead_geniv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct mlx5_accel_esp_xfrm_attrs*,int ,int) ;

__attribute__((used)) static void
mlx5e_ipsec_build_accel_xfrm_attrs(struct mlx5e_ipsec_sa_entry *sa_entry,
       struct mlx5_accel_esp_xfrm_attrs *attrs)
{
 struct xfrm_state *x = sa_entry->x;
 struct aes_gcm_keymat *aes_gcm = &attrs->keymat.aes_gcm;
 struct aead_geniv_ctx *geniv_ctx;
 struct crypto_aead *aead;
 unsigned int crypto_data_len, key_len;
 int ivsize;

 memset(attrs, 0, sizeof(*attrs));


 crypto_data_len = (x->aead->alg_key_len + 7) / 8;
 key_len = crypto_data_len - 4;

 memcpy(aes_gcm->aes_key, x->aead->alg_key, key_len);
 aes_gcm->key_len = key_len * 8;


 aead = x->data;
 geniv_ctx = crypto_aead_ctx(aead);
 ivsize = crypto_aead_ivsize(aead);
 memcpy(&aes_gcm->seq_iv, &geniv_ctx->salt, ivsize);
 memcpy(&aes_gcm->salt, x->aead->alg_key + key_len,
        sizeof(aes_gcm->salt));


 aes_gcm->icv_len = x->aead->alg_icv_len;


 if (sa_entry->esn_state.trigger) {
  attrs->flags |= MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED;
  attrs->esn = sa_entry->esn_state.esn;
  if (sa_entry->esn_state.overlap)
   attrs->flags |= MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP;
 }


 attrs->sa_handle = sa_entry->handle;


 attrs->keymat_type = MLX5_ACCEL_ESP_KEYMAT_AES_GCM;


 attrs->action = (!(x->xso.flags & XFRM_OFFLOAD_INBOUND)) ?
   MLX5_ACCEL_ESP_ACTION_ENCRYPT :
   MLX5_ACCEL_ESP_ACTION_DECRYPT;

 attrs->flags |= (x->props.mode == XFRM_MODE_TRANSPORT) ?
   MLX5_ACCEL_ESP_FLAGS_TRANSPORT :
   MLX5_ACCEL_ESP_FLAGS_TUNNEL;
}
