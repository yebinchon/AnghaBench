; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_s_std_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_s_std_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ths7303_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_480I_576I = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ths7303_s_std_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_s_std_output(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ths7303_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.ths7303_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.ths7303_state* %8, %struct.ths7303_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @V4L2_STD_ALL, align 4
  %11 = load i32, i32* @V4L2_STD_SECAM, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ths7303_state*, %struct.ths7303_state** %6, align 8
  %18 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.ths7303_state*, %struct.ths7303_state** %6, align 8
  %20 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load i32, i32* @THS7303_FILTER_MODE_480I_576I, align 4
  %24 = call i32 @ths7303_setval(%struct.v4l2_subdev* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load i32, i32* @THS7303_FILTER_MODE_DISABLE, align 4
  %28 = call i32 @ths7303_setval(%struct.v4l2_subdev* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ths7303_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ths7303_setval(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
