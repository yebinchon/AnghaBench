; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_start_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_start_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hip04_priv = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hip04_priv*)* @hip04_start_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_start_tx_timer(%struct.hip04_priv* %0) #0 {
  %2 = alloca %struct.hip04_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.hip04_priv* %0, %struct.hip04_priv** %2, align 8
  %4 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NSEC_PER_USEC, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %12 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ns_to_ktime(i64 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %17 = call i32 @hrtimer_start_range_ns(i32* %12, i32 %14, i64 %15, i32 %16)
  ret void
}

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i64, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
