; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x_interval = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ov965x = type { i32, %struct.ov965x_interval*, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i64 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@ov965x_intervals = common dso_local global %struct.ov965x_interval* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Changed frame interval to %u us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, %struct.v4l2_subdev_frame_interval*)* @__ov965x_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov965x_set_frame_interval(%struct.ov965x* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.ov965x_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ov965x_interval*, align 8
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %13 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %14 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %13, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %14, %struct.v4l2_mbus_framefmt** %6, align 8
  %15 = load %struct.ov965x_interval*, %struct.ov965x_interval** @ov965x_intervals, align 8
  %16 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %15, i64 0
  store %struct.ov965x_interval* %16, %struct.ov965x_interval** %7, align 8
  store i32 -1, i32* %10, align 4
  %17 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %2
  %26 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i32 %30, 10000
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @do_div(i32 %32, i32 %36)
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %87, %25
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ov965x_interval*, %struct.ov965x_interval** @ov965x_intervals, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.ov965x_interval* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %38
  %44 = load %struct.ov965x_interval*, %struct.ov965x_interval** @ov965x_intervals, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %44, i64 %46
  store %struct.ov965x_interval* %47, %struct.ov965x_interval** %12, align 8
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ov965x_interval*, %struct.ov965x_interval** %12, align 8
  %52 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %43
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ov965x_interval*, %struct.ov965x_interval** %12, align 8
  %61 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56, %43
  br label %87

66:                                               ; preds = %56
  %67 = load %struct.ov965x_interval*, %struct.ov965x_interval** %12, align 8
  %68 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 10000
  %72 = load %struct.ov965x_interval*, %struct.ov965x_interval** %12, align 8
  %73 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %71, %75
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @abs(i32 %78) #3
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load %struct.ov965x_interval*, %struct.ov965x_interval** %12, align 8
  store %struct.ov965x_interval* %84, %struct.ov965x_interval** %7, align 8
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %66
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load %struct.ov965x_interval*, %struct.ov965x_interval** %7, align 8
  %92 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %93 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %92, i32 0, i32 1
  store %struct.ov965x_interval* %91, %struct.ov965x_interval** %93, align 8
  %94 = load i32, i32* @debug, align 4
  %95 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %96 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %95, i32 0, i32 0
  %97 = load %struct.ov965x_interval*, %struct.ov965x_interval** %7, align 8
  %98 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 1000000
  %102 = load %struct.ov965x_interval*, %struct.ov965x_interval** %7, align 8
  %103 = getelementptr inbounds %struct.ov965x_interval, %struct.ov965x_interval* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %101, %105
  %107 = call i32 @v4l2_dbg(i32 1, i32 %94, i32* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %90, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov965x_interval*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
