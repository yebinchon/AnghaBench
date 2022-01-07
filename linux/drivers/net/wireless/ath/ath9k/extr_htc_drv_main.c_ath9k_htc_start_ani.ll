; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start_ani.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32 }
%struct.ath_common = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@ATH_OP_ANI_RUN = common dso_local global i32 0, align 4
@ATH_ANI_POLLINTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i64, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %5 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ath_common* @ath9k_hw_common(i32 %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load i32, i32* @jiffies, align 4
  %10 = call i64 @jiffies_to_msecs(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %13 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i64 %19, i64* %22, align 8
  %23 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %24 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %28 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 0
  %32 = load i32, i32* @ATH_ANI_POLLINTERVAL, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @ieee80211_queue_delayed_work(i32 %29, i32* %31, i32 %33)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
