; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wl1273-core.c_wl1273_fm_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wl1273-core.c_wl1273_fm_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1273_core = type { i32 }

@WL1273_MAX_VOLUME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WL1273_VOLUME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1273_core*, i32)* @wl1273_fm_set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_fm_set_volume(%struct.wl1273_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1273_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1273_core* %0, %struct.wl1273_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @WL1273_MAX_VOLUME, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %15 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %22 = load i32, i32* @WL1273_VOLUME_SET, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @wl1273_fm_write_cmd(%struct.wl1273_core* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.wl1273_core*, %struct.wl1273_core** %4, align 8
  %32 = getelementptr inbounds %struct.wl1273_core, %struct.wl1273_core* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %27, %19, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @wl1273_fm_write_cmd(%struct.wl1273_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
