; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.c_ath6kl_core_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.c_ath6kl_core_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_core_cleanup(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %4 = call i32 @ath6kl_hif_power_off(%struct.ath6kl* %3)
  %5 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %6 = call i32 @ath6kl_recovery_cleanup(%struct.ath6kl* %5)
  %7 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @destroy_workqueue(i32 %9)
  %11 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ath6kl_htc_cleanup(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %22 = call i32 @ath6kl_cookie_cleanup(%struct.ath6kl* %21)
  %23 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %24 = call i32 @ath6kl_cleanup_amsdu_rxbufs(%struct.ath6kl* %23)
  %25 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %26 = call i32 @ath6kl_bmi_cleanup(%struct.ath6kl* %25)
  %27 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %28 = call i32 @ath6kl_debug_cleanup(%struct.ath6kl* %27)
  %29 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %38 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vfree(i32 %39)
  %41 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %42 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  %45 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %46 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %50 = call i32 @ath6kl_cfg80211_cleanup(%struct.ath6kl* %49)
  ret void
}

declare dso_local i32 @ath6kl_hif_power_off(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_recovery_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ath6kl_htc_cleanup(i64) #1

declare dso_local i32 @ath6kl_cookie_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_cleanup_amsdu_rxbufs(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_bmi_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_debug_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @ath6kl_cfg80211_cleanup(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
