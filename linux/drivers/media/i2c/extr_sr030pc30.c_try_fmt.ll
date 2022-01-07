; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sr030pc30_format = type { i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64 }

@sr030pc30_formats = common dso_local global %struct.sr030pc30_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sr030pc30_format* (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sr030pc30_format* @try_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %6 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %7 = call i32 @sr030pc30_try_frame_size(%struct.v4l2_mbus_framefmt* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** @sr030pc30_formats, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.sr030pc30_format* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** @sr030pc30_formats, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sr030pc30_format, %struct.sr030pc30_format* %17, i64 %19
  %21 = getelementptr inbounds %struct.sr030pc30_format, %struct.sr030pc30_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %29

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %24, %8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** @sr030pc30_formats, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.sr030pc30_format* %31)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** @sr030pc30_formats, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sr030pc30_format, %struct.sr030pc30_format* %36, i64 %38
  %40 = getelementptr inbounds %struct.sr030pc30_format, %struct.sr030pc30_format* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** @sr030pc30_formats, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sr030pc30_format, %struct.sr030pc30_format* %44, i64 %46
  ret %struct.sr030pc30_format* %47
}

declare dso_local i32 @sr030pc30_try_frame_size(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sr030pc30_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
