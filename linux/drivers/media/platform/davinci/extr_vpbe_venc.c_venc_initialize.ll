; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.venc_state = type { i32, i64 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error setting output during init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error setting std during init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @venc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_initialize(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.venc_state*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.venc_state* %7, %struct.venc_state** %4, align 8
  %8 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %9 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @V4L2_STD_525_60, align 4
  %11 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %12 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %15 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @venc_s_routing(%struct.v4l2_subdev* %13, i32 0, i64 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call i32 @v4l2_err(%struct.v4l2_subdev* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load %struct.venc_state*, %struct.venc_state** %4, align 8
  %28 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @venc_s_std_output(%struct.v4l2_subdev* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = call i32 @v4l2_err(%struct.v4l2_subdev* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %33, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @venc_s_routing(%struct.v4l2_subdev*, i32, i64, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @venc_s_std_output(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
