; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_g_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_g_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i32 }
%struct.cx25840_ir_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx25840_ir_rx_g_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_rx_g_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %6 = alloca %struct.cx25840_ir_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_ir_parameters* %1, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %7)
  store %struct.cx25840_ir_state* %8, %struct.cx25840_ir_state** %6, align 8
  %9 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %10 = icmp eq %struct.cx25840_ir_state* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %19 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %20 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %19, i32 0, i32 1
  %21 = call i32 @memcpy(%struct.v4l2_subdev_ir_parameters* %18, i32* %20, i32 4)
  %22 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %23 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.v4l2_subdev_ir_parameters*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
