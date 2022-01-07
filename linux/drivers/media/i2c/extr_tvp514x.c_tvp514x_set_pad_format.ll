; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.tvp514x_decoder = type { i64, %struct.TYPE_3__ }

@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i64 0, align 8
@tvp514x_std_list = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @tvp514x_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.tvp514x_decoder*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %9)
  store %struct.tvp514x_decoder* %10, %struct.tvp514x_decoder** %8, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %57, label %24

24:                                               ; preds = %17
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %57, label %31

31:                                               ; preds = %24
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp514x_std_list, align 8
  %37 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %38 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %31
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp514x_std_list, align 8
  %50 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %51 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44, %31, %24, %17, %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %67

60:                                               ; preds = %44
  %61 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %62 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %61, i32 0, i32 1
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 0
  %65 = bitcast %struct.TYPE_3__* %62 to i8*
  %66 = bitcast %struct.TYPE_3__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 40, i1 false)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
