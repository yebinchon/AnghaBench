; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_start_led_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_start_led_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_pccard = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcan_pccard*)* @pcan_start_led_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_start_led_timer(%struct.pcan_pccard* %0) #0 {
  %2 = alloca %struct.pcan_pccard*, align 8
  store %struct.pcan_pccard* %0, %struct.pcan_pccard** %2, align 8
  %3 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %4 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %3, i32 0, i32 0
  %5 = call i32 @timer_pending(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.pcan_pccard*, %struct.pcan_pccard** %2, align 8
  %9 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %8, i32 0, i32 0
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @mod_timer(i32* %9, i64 %12)
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
