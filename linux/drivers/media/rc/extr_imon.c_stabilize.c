
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int ktime_t ;


 scalar_t__ abs (int) ;
 int ktime_get () ;
 long ktime_ms_delta (int ,int ) ;

__attribute__((used)) static int stabilize(int a, int b, u16 timeout, u16 threshold)
{
 ktime_t ct;
 static ktime_t prev_time;
 static ktime_t hit_time;
 static int x, y, prev_result, hits;
 int result = 0;
 long msec, msec_hit;

 ct = ktime_get();
 msec = ktime_ms_delta(ct, prev_time);
 msec_hit = ktime_ms_delta(ct, hit_time);

 if (msec > 100) {
  x = 0;
  y = 0;
  hits = 0;
 }

 x += a;
 y += b;

 prev_time = ct;

 if (abs(x) > threshold || abs(y) > threshold) {
  if (abs(y) > abs(x))
   result = (y > 0) ? 0x7F : 0x80;
  else
   result = (x > 0) ? 0x7F00 : 0x8000;

  x = 0;
  y = 0;

  if (result == prev_result) {
   hits++;

   if (hits > 3) {
    switch (result) {
    case 0x7F:
     y = 17 * threshold / 30;
     break;
    case 0x80:
     y -= 17 * threshold / 30;
     break;
    case 0x7F00:
     x = 17 * threshold / 30;
     break;
    case 0x8000:
     x -= 17 * threshold / 30;
     break;
    }
   }

   if (hits == 2 && msec_hit < timeout) {
    result = 0;
    hits = 1;
   }
  } else {
   prev_result = result;
   hits = 1;
   hit_time = ct;
  }
 }

 return result;
}
