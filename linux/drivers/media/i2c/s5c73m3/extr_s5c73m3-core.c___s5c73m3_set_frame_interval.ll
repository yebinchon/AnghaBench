; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3_interval = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.s5c73m3 = type { i32, %struct.s5c73m3_interval*, %struct.s5c73m3_frame_size** }
%struct.s5c73m3_frame_size = type { i64, i64 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@RES_ISP = common dso_local global i64 0, align 8
@s5c73m3_intervals = common dso_local global %struct.s5c73m3_interval* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Changed frame interval to %u us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, %struct.v4l2_subdev_frame_interval*)* @__s5c73m3_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5c73m3_set_frame_interval(%struct.s5c73m3* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.s5c73m3_frame_size*, align 8
  %7 = alloca %struct.s5c73m3_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s5c73m3_interval*, align 8
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %13 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %14 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %13, i32 0, i32 2
  %15 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %14, align 8
  %16 = load i64, i64* @RES_ISP, align 8
  %17 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %15, i64 %16
  %18 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %17, align 8
  store %struct.s5c73m3_frame_size* %18, %struct.s5c73m3_frame_size** %6, align 8
  %19 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** @s5c73m3_intervals, align 8
  %20 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %19, i64 0
  store %struct.s5c73m3_interval* %20, %struct.s5c73m3_interval** %7, align 8
  %21 = load i32, i32* @UINT_MAX, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %100

30:                                               ; preds = %2
  %31 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %35, %39
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %85, %30
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** @s5c73m3_intervals, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.s5c73m3_interval* %43)
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %41
  %47 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** @s5c73m3_intervals, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %47, i64 %49
  store %struct.s5c73m3_interval* %50, %struct.s5c73m3_interval** %12, align 8
  %51 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %6, align 8
  %52 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %12, align 8
  %55 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %46
  %60 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %6, align 8
  %61 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %12, align 8
  %64 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59, %46
  br label %85

69:                                               ; preds = %59
  %70 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %12, align 8
  %71 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 1000
  %75 = load i32, i32* %11, align 4
  %76 = sub i32 %74, %75
  %77 = call i32 @abs(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %12, align 8
  store %struct.s5c73m3_interval* %82, %struct.s5c73m3_interval** %7, align 8
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %69
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %41

88:                                               ; preds = %41
  %89 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %7, align 8
  %90 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %91 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %90, i32 0, i32 1
  store %struct.s5c73m3_interval* %89, %struct.s5c73m3_interval** %91, align 8
  %92 = load i32, i32* @s5c73m3_dbg, align 4
  %93 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %94 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %93, i32 0, i32 0
  %95 = load %struct.s5c73m3_interval*, %struct.s5c73m3_interval** %7, align 8
  %96 = getelementptr inbounds %struct.s5c73m3_interval, %struct.s5c73m3_interval* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @v4l2_dbg(i32 1, i32 %92, i32* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %88, %27
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ARRAY_SIZE(%struct.s5c73m3_interval*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
