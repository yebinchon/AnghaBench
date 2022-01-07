; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"failed to find free vdev id for monitor vdev\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WMI_VDEV_TYPE_MONITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to request monitor vdev %i creation: %d\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"mac monitor vdev %d created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_monitor_vdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_monitor_vdev_create(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @__ffs64(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WMI_VDEV_TYPE_MONITOR, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ath10k_wmi_vdev_create(%struct.ath10k* %26, i32 %29, i32 %30, i32 0, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %18
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %18
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  %51 = xor i64 %50, -1
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 @ath10k_dbg(%struct.ath10k* %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %45, %37, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @__ffs64(i64) #1

declare dso_local i32 @ath10k_wmi_vdev_create(%struct.ath10k*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
