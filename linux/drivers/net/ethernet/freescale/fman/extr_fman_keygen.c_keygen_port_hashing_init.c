
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct keygen_scheme {int use_hashing; int base_fqid; int hash_fqid_count; scalar_t__ match_vector; int hashShift; int symmetric_hash; int hw_port_id; scalar_t__ used; } ;
struct fman_keygen {int dummy; } ;


 int DEFAULT_HASH_SHIFT ;
 int DEFAULT_SYMMETRIC_HASH ;
 int EINVAL ;
 int get_free_scheme_id (struct fman_keygen*,int *) ;
 struct keygen_scheme* get_scheme (struct fman_keygen*,int ) ;
 int keygen_bind_port_to_schemes (struct fman_keygen*,int ,int) ;
 int keygen_scheme_setup (struct fman_keygen*,int ,int) ;
 int memset (struct keygen_scheme*,int ,int) ;
 int pr_err (char*) ;

int keygen_port_hashing_init(struct fman_keygen *keygen, u8 hw_port_id,
        u32 hash_base_fqid, u32 hash_size)
{
 struct keygen_scheme *scheme;
 u8 scheme_id;
 int err;


 if (hash_base_fqid == 0 || (hash_base_fqid & ~0x00FFFFFF)) {
  pr_err("Base FQID must be between 1 and 2^24-1\n");
  return -EINVAL;
 }
 if (hash_size == 0 || (hash_size & (hash_size - 1)) != 0) {
  pr_err("Hash size must be power of two\n");
  return -EINVAL;
 }


 err = get_free_scheme_id(keygen, &scheme_id);
 if (err) {
  pr_err("The maximum number of available Schemes has been exceeded\n");
  return -EINVAL;
 }



 scheme = get_scheme(keygen, scheme_id);
 if (!scheme) {
  pr_err("Requested Scheme does not exist\n");
  return -EINVAL;
 }
 if (scheme->used) {
  pr_err("The requested Scheme is already used\n");
  return -EINVAL;
 }




 memset(scheme, 0, sizeof(struct keygen_scheme));


 scheme->hw_port_id = hw_port_id;
 scheme->use_hashing = 1;
 scheme->base_fqid = hash_base_fqid;
 scheme->hash_fqid_count = hash_size;
 scheme->symmetric_hash = DEFAULT_SYMMETRIC_HASH;
 scheme->hashShift = DEFAULT_HASH_SHIFT;




 scheme->match_vector = 0;

 err = keygen_scheme_setup(keygen, scheme_id, 1);
 if (err != 0) {
  pr_err("Scheme setup failed\n");
  return err;
 }


 err = keygen_bind_port_to_schemes(keygen, scheme_id, 1);
 if (err != 0) {
  pr_err("Binding port to schemes failed\n");
  return err;
 }

 return 0;
}
