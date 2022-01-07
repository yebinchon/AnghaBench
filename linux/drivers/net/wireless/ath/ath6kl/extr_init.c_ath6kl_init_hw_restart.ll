; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_hw_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_hw_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@WMI_READY = common dso_local global i32 0, align 4
@ATH6KL_DBG_RECOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to stop during fw error recovery\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to restart during fw error recovery\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_init_hw_restart(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load i32, i32* @WMI_READY, align 4
  %4 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %4, i32 0, i32 0
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %8 = call i32 @ath6kl_cfg80211_stop_all(%struct.ath6kl* %7)
  %9 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %10 = call i64 @__ath6kl_init_hw_stop(%struct.ath6kl* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ATH6KL_DBG_RECOVERY, align 4
  %14 = call i32 @ath6kl_dbg(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %17 = call i64 @__ath6kl_init_hw_start(%struct.ath6kl* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @ATH6KL_DBG_RECOVERY, align 4
  %21 = call i32 @ath6kl_dbg(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %12, %19, %15
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_cfg80211_stop_all(%struct.ath6kl*) #1

declare dso_local i64 @__ath6kl_init_hw_stop(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i64 @__ath6kl_init_hw_start(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
