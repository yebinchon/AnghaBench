; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_tx_set_spacing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_tx_set_spacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_device = type { i32, %struct.wl1273_core* }
%struct.wl1273_core = type { i32 (%struct.wl1273_core*, i32, i32)* }

@WL1273_SCAN_SPACING_SET = common dso_local global i32 0, align 4
@WL1273_SPACING_100kHz = common dso_local global i32 0, align 4
@WL1273_SPACING_50kHz = common dso_local global i32 0, align 4
@WL1273_SPACING_200kHz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_device*, i32)* @wl1273_fm_tx_set_spacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_tx_set_spacing(%struct.wl1273_device* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1273_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1273_core*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1273_device* %0, %struct.wl1273_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %8 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %7, i32 0, i32 1
  %9 = load %struct.wl1273_core*, %struct.wl1273_core** %8, align 8
  store %struct.wl1273_core* %9, %struct.wl1273_core** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %14 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %13, i32 0, i32 0
  %15 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %14, align 8
  %16 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %17 = load i32, i32* @WL1273_SCAN_SPACING_SET, align 4
  %18 = load i32, i32* @WL1273_SPACING_100kHz, align 4
  %19 = call i32 %15(%struct.wl1273_core* %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %21 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %20, i32 0, i32 0
  store i32 100, i32* %21, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 50000
  %25 = icmp ult i32 %24, 25000
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %28 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %27, i32 0, i32 0
  %29 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %28, align 8
  %30 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %31 = load i32, i32* @WL1273_SCAN_SPACING_SET, align 4
  %32 = load i32, i32* @WL1273_SPACING_50kHz, align 4
  %33 = call i32 %29(%struct.wl1273_core* %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %35 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %34, i32 0, i32 0
  store i32 50, i32* %35, align 8
  br label %61

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = sub i32 %37, 100000
  %39 = icmp ult i32 %38, 50000
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %42 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %41, i32 0, i32 0
  %43 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %42, align 8
  %44 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %45 = load i32, i32* @WL1273_SCAN_SPACING_SET, align 4
  %46 = load i32, i32* @WL1273_SPACING_100kHz, align 4
  %47 = call i32 %43(%struct.wl1273_core* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %49 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %48, i32 0, i32 0
  store i32 100, i32* %49, align 8
  br label %60

50:                                               ; preds = %36
  %51 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %52 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %51, i32 0, i32 0
  %53 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %52, align 8
  %54 = load %struct.wl1273_core*, %struct.wl1273_core** %5, align 8
  %55 = load i32, i32* @WL1273_SCAN_SPACING_SET, align 4
  %56 = load i32, i32* @WL1273_SPACING_200kHz, align 4
  %57 = call i32 %53(%struct.wl1273_core* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %59 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %58, i32 0, i32 0
  store i32 200, i32* %59, align 8
  br label %60

60:                                               ; preds = %50, %40
  br label %61

61:                                               ; preds = %60, %26
  br label %62

62:                                               ; preds = %61, %12
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
