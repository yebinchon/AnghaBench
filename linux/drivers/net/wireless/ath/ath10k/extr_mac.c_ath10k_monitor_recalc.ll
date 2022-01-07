; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mac monitor recalc started? %d needed? %d allowed? %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"mac monitor stopping disallowed monitor\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to stop disallowed monitor: %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_monitor_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_monitor_recalc(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = call i32 @ath10k_mac_monitor_vdev_is_needed(%struct.ath10k* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = call i32 @ath10k_mac_monitor_vdev_is_allowed(%struct.ath10k* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i1 [ false, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %41 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %39, i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = call i32 @ath10k_monitor_stop(%struct.ath10k* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ath10k_warn(%struct.ath10k* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %28
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = call i32 @ath10k_monitor_start(%struct.ath10k* %65)
  store i32 %66, i32* %2, align 4
  br label %70

67:                                               ; preds = %61
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = call i32 @ath10k_monitor_stop(%struct.ath10k* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %64, %60, %51
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_mac_monitor_vdev_is_needed(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_monitor_vdev_is_allowed(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_monitor_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_monitor_start(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
