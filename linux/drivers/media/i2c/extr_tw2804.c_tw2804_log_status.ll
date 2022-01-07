; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tw2804 = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"Standard: %s\0A\00", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"60 Hz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"50 Hz\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Channel: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Input: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tw2804_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tw2804*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.tw2804* @to_state(%struct.v4l2_subdev* %4)
  store %struct.tw2804* %5, %struct.tw2804** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.tw2804*, %struct.tw2804** %3, align 8
  %8 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @V4L2_STD_525_60, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @v4l2_info(%struct.v4l2_subdev* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = load %struct.tw2804*, %struct.tw2804** %3, align 8
  %18 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @v4l2_info(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %22 = load %struct.tw2804*, %struct.tw2804** %3, align 8
  %23 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @v4l2_info(%struct.v4l2_subdev* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %27 = call i32 @v4l2_ctrl_subdev_log_status(%struct.v4l2_subdev* %26)
  ret i32 %27
}

declare dso_local %struct.tw2804* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_subdev_log_status(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
