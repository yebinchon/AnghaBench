; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ths7303_state = type { %struct.v4l2_bt_timings, i64 }
%struct.v4l2_bt_timings = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"stream %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"timings: %dx%d%s%d (%dx%d). Pix freq. = %d Hz. Polarities = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"no timings set\0A\00", align 1
@THS7303_CHANNEL_1 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_2 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ths7303_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ths7303_state*, align 8
  %4 = alloca %struct.v4l2_bt_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.ths7303_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.ths7303_state* %8, %struct.ths7303_state** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = load %struct.ths7303_state*, %struct.ths7303_state** %3, align 8
  %11 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.ths7303_state*, %struct.ths7303_state** %3, align 8
  %18 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %1
  %23 = load %struct.ths7303_state*, %struct.ths7303_state** %3, align 8
  %24 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %23, i32 0, i32 0
  store %struct.v4l2_bt_timings* %24, %struct.v4l2_bt_timings** %4, align 8
  %25 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %26 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %28 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %30 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %22
  %47 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %50, %53
  br label %56

55:                                               ; preds = %22
  br label %56

56:                                               ; preds = %55, %46
  %57 = phi i32 [ %54, %46 ], [ 0, %55 ]
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %29, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %35, i8* %41, i32 %57, i32 %58, i32 %59, i32 %63, i32 %66)
  br label %71

68:                                               ; preds = %1
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %70 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %56
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %73 = load i32, i32* @THS7303_CHANNEL_1, align 4
  %74 = call i32 @ths7303_log_channel_status(%struct.v4l2_subdev* %72, i32 %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load i32, i32* @THS7303_CHANNEL_2, align 4
  %77 = call i32 @ths7303_log_channel_status(%struct.v4l2_subdev* %75, i32 %76)
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %79 = load i32, i32* @THS7303_CHANNEL_3, align 4
  %80 = call i32 @ths7303_log_channel_status(%struct.v4l2_subdev* %78, i32 %79)
  ret i32 0
}

declare dso_local %struct.ths7303_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @ths7303_log_channel_status(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
