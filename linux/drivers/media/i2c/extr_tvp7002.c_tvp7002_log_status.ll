; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tvp7002 = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_bt_timings }

@.str = private unnamed_addr constant [28 x i8] c"Selected DV Timings: %ux%u\0A\00", align 1
@NUM_TIMINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected DV Timings: None\0A\00", align 1
@tvp7002_timings = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Detected DV Timings: %ux%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Streaming enabled: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tvp7002_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tvp7002*, align 8
  %4 = alloca %struct.v4l2_bt_timings*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev* %6)
  store %struct.tvp7002* %7, %struct.tvp7002** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call i32 @tvp7002_query_dv(%struct.v4l2_subdev* %8, i32* %5)
  %10 = load %struct.tvp7002*, %struct.tvp7002** %3, align 8
  %11 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_bt_timings* %14, %struct.v4l2_bt_timings** %4, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_TIMINGS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %44

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tvp7002_timings, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.v4l2_bt_timings* %35, %struct.v4l2_bt_timings** %4, align 8
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %29, %26
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = load %struct.tvp7002*, %struct.tvp7002** %3, align 8
  %47 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %52 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.tvp7002*, %struct.tvp7002** %3, align 8
  %54 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %53, i32 0, i32 0
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l2_ctrl_handler_log_status(i32* %54, i32 %57)
  ret i32 0
}

declare dso_local %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp7002_query_dv(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
