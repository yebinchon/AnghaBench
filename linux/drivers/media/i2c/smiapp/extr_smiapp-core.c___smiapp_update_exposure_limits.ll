; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_update_exposure_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c___smiapp_update_exposure_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.v4l2_ctrl* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_ctrl = type { i32, i32 }

@SMIAPP_PA_PAD_SRC = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_COARSE_INTEGRATION_TIME_MAX_MARGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smiapp_sensor*)* @__smiapp_update_exposure_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__smiapp_update_exposure_limits(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %5 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %6 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %5, i32 0, i32 3
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  store %struct.v4l2_ctrl* %7, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %9 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %18 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %16, %21
  %23 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %24 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SMIAPP_LIMIT_COARSE_INTEGRATION_TIME_MAX_MARGIN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %22, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %30, i32 %33, i32 %34, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @__v4l2_ctrl_modify_range(%struct.v4l2_ctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
