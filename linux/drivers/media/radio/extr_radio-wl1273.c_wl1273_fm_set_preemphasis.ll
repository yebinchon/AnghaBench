; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_set_preemphasis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-wl1273.c_wl1273_fm_set_preemphasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_device = type { i32, %struct.wl1273_core* }
%struct.wl1273_core = type { i64, i32 (%struct.wl1273_core*, i32, i32)*, i32 }

@WL1273_MODE_OFF = common dso_local global i64 0, align 8
@WL1273_MODE_SUSPENDED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WL1273_PREMPH_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_device*, i32)* @wl1273_fm_set_preemphasis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_set_preemphasis(%struct.wl1273_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1273_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1273_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1273_device* %0, %struct.wl1273_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wl1273_device*, %struct.wl1273_device** %4, align 8
  %10 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %9, i32 0, i32 1
  %11 = load %struct.wl1273_core*, %struct.wl1273_core** %10, align 8
  store %struct.wl1273_core* %11, %struct.wl1273_core** %6, align 8
  %12 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %13 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WL1273_MODE_OFF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %19 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WL1273_MODE_SUSPENDED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %28 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %34 [
    i32 128, label %31
    i32 130, label %32
    i32 129, label %33
  ]

31:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %37

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %37

33:                                               ; preds = %26
  store i32 2, i32* %8, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %33, %32, %31
  %38 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %39 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %38, i32 0, i32 1
  %40 = load i32 (%struct.wl1273_core*, i32, i32)*, i32 (%struct.wl1273_core*, i32, i32)** %39, align 8
  %41 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %42 = load i32, i32* @WL1273_PREMPH_SET, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %40(%struct.wl1273_core* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.wl1273_device*, %struct.wl1273_device** %4, align 8
  %51 = getelementptr inbounds %struct.wl1273_device, %struct.wl1273_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %47, %34
  %53 = load %struct.wl1273_core*, %struct.wl1273_core** %6, align 8
  %54 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
