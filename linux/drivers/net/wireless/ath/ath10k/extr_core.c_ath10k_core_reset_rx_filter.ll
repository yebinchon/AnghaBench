; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_reset_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_reset_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32* }

@WMI_VDEV_TYPE_STA = common dso_local global i32 0, align 4
@WMI_VDEV_SUBTYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create dummy vdev: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to delete dummy vdev: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to ping firmware: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_core_reset_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_reset_rx_filter(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @WMI_VDEV_TYPE_STA, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = load i32, i32* @WMI_VDEV_SUBTYPE_NONE, align 4
  %12 = call i32 @ath10k_wmi_get_vdev_subtype(%struct.ath10k* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @ath10k_wmi_vdev_create(%struct.ath10k* %16, i32 %17, i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ath10k_err(%struct.ath10k* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ath10k_wmi_vdev_delete(%struct.ath10k* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ath10k_err(%struct.ath10k* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %29
  %41 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %42 = call i32 @ath10k_wmi_barrier(%struct.ath10k* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ath10k_err(%struct.ath10k* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %35, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ath10k_wmi_get_vdev_subtype(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_create(%struct.ath10k*, i32, i32, i32, i32*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_delete(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_wmi_barrier(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
