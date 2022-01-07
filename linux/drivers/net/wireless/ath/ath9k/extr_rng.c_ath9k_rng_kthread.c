
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath_softc {int * rng_task; } ;


 int ATH9K_RNG_BUF_SIZE ;
 int ATH9K_RNG_ENTROPY (int) ;
 int GFP_KERNEL ;
 int add_hwgenerator_randomness (void*,int,int ) ;
 int ath9k_rng_data_read (struct ath_softc*,scalar_t__*,int ) ;
 scalar_t__ ath9k_rng_delay_get (scalar_t__) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc_array (int ,int,int ) ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (scalar_t__) ;
 int rng_queue ;
 scalar_t__ unlikely (int) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static int ath9k_rng_kthread(void *data)
{
 int bytes_read;
 struct ath_softc *sc = data;
 u32 *rng_buf;
 u32 delay, fail_stats = 0;

 rng_buf = kmalloc_array(ATH9K_RNG_BUF_SIZE, sizeof(u32), GFP_KERNEL);
 if (!rng_buf)
  goto out;

 while (!kthread_should_stop()) {
  bytes_read = ath9k_rng_data_read(sc, rng_buf,
       ATH9K_RNG_BUF_SIZE);
  if (unlikely(!bytes_read)) {
   delay = ath9k_rng_delay_get(++fail_stats);
   wait_event_interruptible_timeout(rng_queue,
        kthread_should_stop(),
        msecs_to_jiffies(delay));
   continue;
  }

  fail_stats = 0;


  add_hwgenerator_randomness((void *)rng_buf, bytes_read,
        ATH9K_RNG_ENTROPY(bytes_read));
 }

 kfree(rng_buf);
out:
 sc->rng_task = ((void*)0);

 return 0;
}
