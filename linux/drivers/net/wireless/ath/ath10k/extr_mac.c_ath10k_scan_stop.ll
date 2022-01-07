; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_scan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_scan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wmi_stop_scan_arg = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ATH10K_SCAN_ID = common dso_local global i32 0, align 4
@WMI_SCAN_STOP_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to stop wmi scan: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"failed to receive scan abortion completion: timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ATH10K_SCAN_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_scan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_scan_stop(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.wmi_stop_scan_arg, align 4
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @ATH10K_SCAN_ID, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %3, i32 0, i32 2
  %10 = load i32, i32* @WMI_SCAN_STOP_ONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %15 = call i32 @ath10k_wmi_stop_scan(%struct.ath10k* %14, %struct.wmi_stop_scan_arg* %3)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %42

22:                                               ; preds = %1
  %23 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 3, %26
  %28 = call i32 @wait_for_completion_timeout(i32* %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %33 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATH10K_SCAN_IDLE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %54 = call i32 @__ath10k_scan_finish(%struct.ath10k* %53)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_wmi_stop_scan(%struct.ath10k*, %struct.wmi_stop_scan_arg*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ath10k_scan_finish(%struct.ath10k*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
