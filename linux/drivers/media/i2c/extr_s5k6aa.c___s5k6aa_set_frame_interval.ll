; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa_interval = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.s5k6aa = type { i32, %struct.s5k6aa_interval*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i64 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@s5k6aa_intervals = common dso_local global %struct.s5k6aa_interval* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Changed frame interval to %d us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, %struct.v4l2_subdev_frame_interval*)* @__s5k6aa_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k6aa_set_frame_interval(%struct.s5k6aa* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k6aa*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.s5k6aa_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s5k6aa_interval*, align 8
  store %struct.s5k6aa* %0, %struct.s5k6aa** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %13 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %14 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %6, align 8
  %17 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** @s5k6aa_intervals, align 8
  %18 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %17, i64 0
  store %struct.s5k6aa_interval* %18, %struct.s5k6aa_interval** %7, align 8
  %19 = load i32, i32* @UINT_MAX, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %96

28:                                               ; preds = %2
  %29 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 10000
  %34 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %33, %37
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %81, %28
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** @s5k6aa_intervals, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.s5k6aa_interval* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** @s5k6aa_intervals, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %45, i64 %47
  store %struct.s5k6aa_interval* %48, %struct.s5k6aa_interval** %12, align 8
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %12, align 8
  %53 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %51, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %44
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %12, align 8
  %62 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %44
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %12, align 8
  %69 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sub i32 %70, %71
  %73 = call i32 @abs(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %12, align 8
  store %struct.s5k6aa_interval* %78, %struct.s5k6aa_interval** %7, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %7, align 8
  %86 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %87 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %86, i32 0, i32 1
  store %struct.s5k6aa_interval* %85, %struct.s5k6aa_interval** %87, align 8
  %88 = load i32, i32* @debug, align 4
  %89 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %90 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %89, i32 0, i32 0
  %91 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %7, align 8
  %92 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 100
  %95 = call i32 @v4l2_dbg(i32 1, i32 %88, i32* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %84, %25
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ARRAY_SIZE(%struct.s5k6aa_interval*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
