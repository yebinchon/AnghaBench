; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cx25840_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.cx25840_state* %6, %struct.cx25840_state** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call i32 @log_video_status(%struct.i2c_client* %9)
  %11 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %12 = call i32 @is_cx2583x(%struct.cx25840_state* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call i32 @log_audio_status(%struct.i2c_client* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %19 = call i32 @cx25840_ir_log_status(%struct.v4l2_subdev* %18)
  %20 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %21 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %20, i32 0, i32 0
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_ctrl_handler_log_status(i32* %21, i32 %24)
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @log_video_status(%struct.i2c_client*) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @log_audio_status(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_ir_log_status(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
