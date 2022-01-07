; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_perform_ct_kill_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_perform_ct_kill_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Stop all queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Schedule 5 seconds CT_KILL Timer\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CT_KILL_EXIT_DURATION = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Wake all queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32)* @iwl_perform_ct_kill_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_perform_ct_kill_task(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ieee80211_stop_queues(i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* @CT_KILL_EXIT_DURATION, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = call i32 @mod_timer(i32* %24, i64 %30)
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %34 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ieee80211_wake_queues(i32 %42)
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44, %19
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
