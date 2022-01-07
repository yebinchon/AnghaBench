; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.saa6752hs_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SAA6752HS_VF_UNKNOWN = common dso_local global i64 0, align 8
@SAA6752HS_VF_D1 = common dso_local global i64 0, align 8
@v4l2_format_table = common dso_local global %struct.TYPE_6__* null, align 8
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @saa6752hs_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.saa6752hs_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %11, %struct.v4l2_mbus_framefmt** %8, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.saa6752hs_state* %13, %struct.saa6752hs_state** %9, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %9, align 8
  %23 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SAA6752HS_VF_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @SAA6752HS_VF_D1, align 8
  %29 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %9, align 8
  %30 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @v4l2_format_table, align 8
  %33 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %9, align 8
  %34 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @v4l2_format_table, align 8
  %44 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %9, align 8
  %45 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %31, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
