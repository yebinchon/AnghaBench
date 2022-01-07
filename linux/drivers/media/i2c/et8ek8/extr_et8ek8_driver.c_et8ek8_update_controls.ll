; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_update_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_update_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_sensor = type { i32, %struct.v4l2_ctrl*, %struct.TYPE_2__* }
%struct.v4l2_ctrl = type { i32 }
%struct.TYPE_2__ = type { %struct.et8ek8_mode }
%struct.et8ek8_mode = type { i32, i32, i32, i32 }

@et8ek8_update_controls.S = internal constant i32 8, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et8ek8_sensor*)* @et8ek8_update_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et8ek8_update_controls(%struct.et8ek8_sensor* %0) #0 {
  %2 = alloca %struct.et8ek8_sensor*, align 8
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.et8ek8_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %2, align 8
  %8 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %9 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.et8ek8_mode* %11, %struct.et8ek8_mode** %4, align 8
  %12 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %13 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %12, i32 0, i32 1
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  store %struct.v4l2_ctrl* %14, %struct.v4l2_ctrl** %3, align 8
  store i32 1, i32* %5, align 4
  %15 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %4, align 8
  %16 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %4, align 8
  %19 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 256
  %22 = sub nsw i32 %21, 1
  %23 = ashr i32 %22, 8
  %24 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %4, align 8
  %25 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %4, align 8
  %29 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %30, %32
  %34 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %4, align 8
  %35 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %45 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
