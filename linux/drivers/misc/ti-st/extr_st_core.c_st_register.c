
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_proto_s {size_t chnl_id; void* write; int * reg_complete_cb; int * recv; } ;
struct st_data_s {int* is_registered; scalar_t__ protos_registered; int lock; int st_state; int kim_data; } ;


 long EALREADY ;
 long EINPROGRESS ;
 long EINVAL ;
 long EPROTONOSUPPORT ;
 scalar_t__ ST_EMPTY ;
 size_t ST_MAX_CHANNELS ;
 int ST_REG_IN_PROGRESS ;
 int ST_REG_PENDING ;
 int add_channel_to_table (struct st_data_s*,struct st_proto_s*) ;
 int clear_bit (int ,int *) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,size_t) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int st_int_recv ;
 int st_kim_recv ;
 int st_kim_ref (struct st_data_s**,int ) ;
 long st_kim_start (int ) ;
 int st_ll_enable (struct st_data_s*) ;
 int st_recv ;
 int st_reg_complete (struct st_data_s*,long) ;
 void* st_write ;
 scalar_t__ test_bit (int ,int *) ;

long st_register(struct st_proto_s *new_proto)
{
 struct st_data_s *st_gdata;
 long err = 0;
 unsigned long flags = 0;

 st_kim_ref(&st_gdata, 0);
 if (st_gdata == ((void*)0) || new_proto == ((void*)0) || new_proto->recv == ((void*)0)
     || new_proto->reg_complete_cb == ((void*)0)) {
  pr_err("gdata/new_proto/recv or reg_complete_cb not ready");
  return -EINVAL;
 }

 if (new_proto->chnl_id >= ST_MAX_CHANNELS) {
  pr_err("chnl_id %d not supported", new_proto->chnl_id);
  return -EPROTONOSUPPORT;
 }

 if (st_gdata->is_registered[new_proto->chnl_id] == 1) {
  pr_err("chnl_id %d already registered", new_proto->chnl_id);
  return -EALREADY;
 }


 spin_lock_irqsave(&st_gdata->lock, flags);

 if (test_bit(ST_REG_IN_PROGRESS, &st_gdata->st_state)) {
  pr_info(" ST_REG_IN_PROGRESS:%d ", new_proto->chnl_id);


  add_channel_to_table(st_gdata, new_proto);
  st_gdata->protos_registered++;
  new_proto->write = st_write;

  set_bit(ST_REG_PENDING, &st_gdata->st_state);
  spin_unlock_irqrestore(&st_gdata->lock, flags);
  return -EINPROGRESS;
 } else if (st_gdata->protos_registered == ST_EMPTY) {
  pr_info(" chnl_id list empty :%d ", new_proto->chnl_id);
  set_bit(ST_REG_IN_PROGRESS, &st_gdata->st_state);
  st_recv = st_kim_recv;


  st_ll_enable(st_gdata);


  spin_unlock_irqrestore(&st_gdata->lock, flags);




  err = st_kim_start(st_gdata->kim_data);
  if (err != 0) {
   clear_bit(ST_REG_IN_PROGRESS, &st_gdata->st_state);
   if ((st_gdata->protos_registered != ST_EMPTY) &&
       (test_bit(ST_REG_PENDING, &st_gdata->st_state))) {
    pr_err(" KIM failure complete callback ");
    spin_lock_irqsave(&st_gdata->lock, flags);
    st_reg_complete(st_gdata, err);
    spin_unlock_irqrestore(&st_gdata->lock, flags);
    clear_bit(ST_REG_PENDING, &st_gdata->st_state);
   }
   return -EINVAL;
  }

  spin_lock_irqsave(&st_gdata->lock, flags);

  clear_bit(ST_REG_IN_PROGRESS, &st_gdata->st_state);
  st_recv = st_int_recv;




  if ((st_gdata->protos_registered != ST_EMPTY) &&
      (test_bit(ST_REG_PENDING, &st_gdata->st_state))) {
   pr_debug(" call reg complete callback ");
   st_reg_complete(st_gdata, 0);
  }
  clear_bit(ST_REG_PENDING, &st_gdata->st_state);




  if (st_gdata->is_registered[new_proto->chnl_id] == 1) {
   pr_err(" proto %d already registered ",
       new_proto->chnl_id);
   spin_unlock_irqrestore(&st_gdata->lock, flags);
   return -EALREADY;
  }

  add_channel_to_table(st_gdata, new_proto);
  st_gdata->protos_registered++;
  new_proto->write = st_write;
  spin_unlock_irqrestore(&st_gdata->lock, flags);
  return err;
 }

 else {
  add_channel_to_table(st_gdata, new_proto);
  st_gdata->protos_registered++;
  new_proto->write = st_write;


  spin_unlock_irqrestore(&st_gdata->lock, flags);
  return err;
 }
}
