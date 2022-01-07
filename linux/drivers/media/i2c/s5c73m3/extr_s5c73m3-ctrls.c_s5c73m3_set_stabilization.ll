; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_stabilization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_stabilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Image stabilization: %d\0A\00", align 1
@COMM_FRAME_RATE = common dso_local global i32 0, align 4
@COMM_FRAME_RATE_ANTI_SHAKE = common dso_local global i32 0, align 4
@COMM_FRAME_RATE_AUTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_set_stabilization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_stabilization(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %7 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %6, i32 0, i32 0
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %5, align 8
  %8 = load i32, i32* @s5c73m3_dbg, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @v4l2_dbg(i32 1, i32 %8, %struct.v4l2_subdev* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %13 = load i32, i32* @COMM_FRAME_RATE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @COMM_FRAME_RATE_ANTI_SHAKE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @COMM_FRAME_RATE_AUTO_SET, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %12, i32 %13, i32 %21)
  ret i32 %22
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
