; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7110 = type { i64 }

@SAA7110_MAX_INPUT = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"input=%d not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"switched to input=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @saa7110_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.saa7110*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.saa7110* @to_saa7110(%struct.v4l2_subdev* %11)
  store %struct.saa7110* %12, %struct.saa7110** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SAA7110_MAX_INPUT, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @v4l2_dbg(i32 1, i32 %17, %struct.v4l2_subdev* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.saa7110*, %struct.saa7110** %10, align 8
  %25 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @saa7110_selmux(%struct.v4l2_subdev* %30, i64 %31)
  %33 = load i32, i32* @debug, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @v4l2_dbg(i32 1, i32 %33, %struct.v4l2_subdev* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %29, %23
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @saa7110_selmux(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
