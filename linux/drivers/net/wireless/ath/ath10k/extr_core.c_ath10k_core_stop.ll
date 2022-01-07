; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32, i32 }

@ATH10K_STATE_RESTARTING = common dso_local global i64 0, align 8
@ATH10K_STATE_UTF = common dso_local global i64 0, align 8
@WMI_PDEV_SUSPEND_AND_DISABLE_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_core_stop(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %3, i32 0, i32 2
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = call i32 @ath10k_debug_stop(%struct.ath10k* %6)
  %8 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ATH10K_STATE_RESTARTING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATH10K_STATE_UTF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %21 = load i32, i32* @WMI_PDEV_SUSPEND_AND_DISABLE_INTR, align 4
  %22 = call i32 @ath10k_wait_for_suspend(%struct.ath10k* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %13, %1
  %24 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %25 = call i32 @ath10k_hif_stop(%struct.ath10k* %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 1
  %28 = call i32 @ath10k_htt_tx_stop(i32* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 1
  %31 = call i32 @ath10k_htt_rx_free(i32* %30)
  %32 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %33 = call i32 @ath10k_wmi_detach(%struct.ath10k* %32)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_debug_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wait_for_suspend(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_hif_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htt_tx_stop(i32*) #1

declare dso_local i32 @ath10k_htt_rx_free(i32*) #1

declare dso_local i32 @ath10k_wmi_detach(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
