; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_try_fmt_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_try_fmt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ov5640_mode_info = type { i32, i32 }
%struct.ov5640_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ov5640_formats = common dso_local global %struct.TYPE_3__* null, align 8
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, i32, %struct.ov5640_mode_info**)* @ov5640_try_fmt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_try_fmt_internal(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1, i32 %2, %struct.ov5640_mode_info** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ov5640_mode_info**, align 8
  %10 = alloca %struct.ov5640_dev*, align 8
  %11 = alloca %struct.ov5640_mode_info*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ov5640_mode_info** %3, %struct.ov5640_mode_info*** %9, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev* %13)
  store %struct.ov5640_dev* %14, %struct.ov5640_dev** %10, align 8
  %15 = load %struct.ov5640_dev*, %struct.ov5640_dev** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev* %15, i32 %16, i32 %19, i32 %22, i32 1)
  store %struct.ov5640_mode_info* %23, %struct.ov5640_mode_info** %11, align 8
  %24 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %11, align 8
  %25 = icmp ne %struct.ov5640_mode_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %4
  %30 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %11, align 8
  %31 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %11, align 8
  %36 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ov5640_mode_info**, %struct.ov5640_mode_info*** %9, align 8
  %41 = icmp ne %struct.ov5640_mode_info** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %11, align 8
  %44 = load %struct.ov5640_mode_info**, %struct.ov5640_mode_info*** %9, align 8
  store %struct.ov5640_mode_info* %43, %struct.ov5640_mode_info** %44, align 8
  br label %45

45:                                               ; preds = %42, %29
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov5640_formats, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov5640_formats, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %46

67:                                               ; preds = %62, %46
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov5640_formats, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %69)
  %71 = icmp sge i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov5640_formats, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov5640_formats, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %92)
  %94 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %101)
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %73, %26
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
