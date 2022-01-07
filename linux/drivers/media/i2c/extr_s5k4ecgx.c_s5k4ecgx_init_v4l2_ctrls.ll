; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_init_v4l2_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_init_v4l2_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.s5k4ecgx = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@s5k4ecgx_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@SHARPNESS_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*)* @s5k4ecgx_init_v4l2_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_init_v4l2_ctrls(%struct.s5k4ecgx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k4ecgx*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca i32, align 4
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %3, align 8
  store %struct.v4l2_ctrl_ops* @s5k4ecgx_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %7 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %8 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %7, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %5, align 8
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %9, i32 4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %18 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %19 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, %struct.v4l2_ctrl_ops* %17, i32 %18, i32 -208, i32 127, i32 1, i32 0)
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %21 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %22 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %23 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %20, %struct.v4l2_ctrl_ops* %21, i32 %22, i32 -127, i32 127, i32 1, i32 0)
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %25 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %26 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %27 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %24, %struct.v4l2_ctrl_ops* %25, i32 %26, i32 -127, i32 127, i32 1, i32 0)
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %29 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %30 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %31 = load i32, i32* @SHARPNESS_DIV, align 4
  %32 = sdiv i32 -32704, %31
  %33 = load i32, i32* @SHARPNESS_DIV, align 4
  %34 = sdiv i32 24612, %33
  %35 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %28, %struct.v4l2_ctrl_ops* %29, i32 %30, i32 %32, i32 %34, i32 1, i32 2)
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %15
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %45 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %15
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %49 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %50 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %48, %struct.v4l2_ctrl_handler** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %40, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
