; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_device = type { i64, %struct.wl1273_core* }
%struct.wl1273_core = type { i64, i32 (%struct.wl1273_core*, i32, i64)*, i32 }

@WL1273_MODE_OFF = common dso_local global i64 0, align 8
@WL1273_MODE_SUSPENDED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@WL1273_POWER_LEV_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_device*, i64)* @wl1273_fm_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_set_tx_power(%struct.wl1273_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1273_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wl1273_core*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1273_device* %0, %struct.wl1273_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wl1273_device*, %struct.wl1273_device** %4, align 8
  %9 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %8, i32 0, i32 1
  %10 = load %struct.wl1273_core*, %struct.wl1273_core** %9, align 8
  store %struct.wl1273_core* %10, %struct.wl1273_core** %6, align 8
  %11 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %12 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WL1273_MODE_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %18 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WL1273_MODE_SUSPENDED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %16
  %26 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %27 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %30 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %29, i32 0, i32 1
  %31 = load i32 (%struct.wl1273_core*, i32, i64)*, i32 (%struct.wl1273_core*, i32, i64)** %30, align 8
  %32 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %33 = load i32, i32* @WL1273_POWER_LEV_SET, align 4
  %34 = load i64, i64* %5, align 8
  %35 = sub nsw i64 122, %34
  %36 = call i32 %31(%struct.wl1273_core* %32, i32 %33, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %44

40:                                               ; preds = %25
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.wl1273_device*, %struct.wl1273_device** %4, align 8
  %43 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %46 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
