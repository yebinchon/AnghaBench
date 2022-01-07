; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_device = type { i64, i32, %struct.wl1273_core* }
%struct.wl1273_core = type { i64, i32 (%struct.wl1273_core*, i32, i32*)* }

@WL1273_MODE_RX = common dso_local global i64 0, align 8
@WL1273_FREQ_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Freq get: 0x%04x\0A\00", align 1
@WL1273_BAND_JAPAN = common dso_local global i64 0, align 8
@WL1273_BAND_JAPAN_LOW = common dso_local global i32 0, align 4
@WL1273_BAND_OTHER_LOW = common dso_local global i32 0, align 4
@WL1273_CHANL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_device*)* @wl1273_fm_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_get_freq(%struct.wl1273_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1273_device*, align 8
  %4 = alloca %struct.wl1273_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1273_device* %0, %struct.wl1273_device** %3, align 8
  %8 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %9 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %8, i32 0, i32 2
  %10 = load %struct.wl1273_core*, %struct.wl1273_core** %9, align 8
  store %struct.wl1273_core* %10, %struct.wl1273_core** %4, align 8
  %11 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %12 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WL1273_MODE_RX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %18 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %17, i32 0, i32 1
  %19 = load i32 (%struct.wl1273_core*, i32, i32*)*, i32 (%struct.wl1273_core*, i32, i32*)** %18, align 8
  %20 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %21 = load i32, i32* @WL1273_FREQ_SET, align 4
  %22 = call i32 %19(%struct.wl1273_core* %20, i32 %21, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %16
  %28 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %29 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.wl1273_device*, %struct.wl1273_device** %3, align 8
  %34 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WL1273_BAND_JAPAN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* @WL1273_BAND_JAPAN_LOW, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 50, %40
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %27
  %44 = load i32, i32* @WL1273_BAND_OTHER_LOW, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 50, %45
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %63

49:                                               ; preds = %1
  %50 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %51 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %50, i32 0, i32 1
  %52 = load i32 (%struct.wl1273_core*, i32, i32*)*, i32 (%struct.wl1273_core*, i32, i32*)** %51, align 8
  %53 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %54 = load i32, i32* @WL1273_CHANL_SET, align 4
  %55 = call i32 %52(%struct.wl1273_core* %53, i32 %54, i32* %6)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 10
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %58, %25
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
