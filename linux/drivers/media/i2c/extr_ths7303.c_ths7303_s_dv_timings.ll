; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i64, i32 }
%struct.ths7303_state = type { i64, i32 }

@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @ths7303_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_s_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.ths7303_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.ths7303_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.ths7303_state* %8, %struct.ths7303_state** %6, align 8
  %9 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %10 = icmp ne %struct.v4l2_dv_timings* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ths7303_state*, %struct.ths7303_state** %6, align 8
  %25 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ths7303_state*, %struct.ths7303_state** %6, align 8
  %27 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = call i32 @ths7303_config(%struct.v4l2_subdev* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.ths7303_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ths7303_config(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
