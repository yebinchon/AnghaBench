; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_start_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wmi_start_scan_arg = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to stop scan: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ATH10K_SCAN_IDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wmi_start_scan_arg*)* @ath10k_start_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_start_scan(%struct.ath10k* %0, %struct.wmi_start_scan_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_start_scan_arg*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_start_scan_arg* %1, %struct.wmi_start_scan_arg** %5, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %5, align 8
  %12 = call i32 @ath10k_wmi_start_scan(%struct.ath10k* %10, %struct.wmi_start_scan_arg* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 1, %21
  %23 = call i32 @wait_for_completion_timeout(i32* %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = call i32 @ath10k_scan_stop(%struct.ath10k* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ath10k_warn(%struct.ath10k* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %17
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ATH10K_SCAN_IDLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %38
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %48, %35, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_wmi_start_scan(%struct.ath10k*, %struct.wmi_start_scan_arg*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ath10k_scan_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
