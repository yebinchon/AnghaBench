; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i64, %struct.mt9m001_datafmt*, i32, i64 }
%struct.mt9m001_datafmt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MT9M001_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MIN_HEIGHT = common dso_local global i64 0, align 8
@MT9M001_MAX_HEIGHT = common dso_local global i64 0, align 8
@mt9m001_colour_fmts = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @mt9m001_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.mt9m001*, align 8
  %11 = alloca %struct.mt9m001_datafmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %16)
  store %struct.mt9m001* %17, %struct.mt9m001** %10, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 7
  %28 = load i32, i32* @MT9M001_MIN_WIDTH, align 4
  %29 = load i32, i32* @MT9M001_MAX_WIDTH, align 4
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 6
  %32 = load i64, i64* @MT9M001_MIN_HEIGHT, align 8
  %33 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %34 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @MT9M001_MAX_HEIGHT, align 8
  %38 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %39 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @v4l_bound_align_image(i32* %27, i32 %28, i32 %29, i32 1, i64* %31, i64 %36, i64 %41, i32 0, i32 0)
  %43 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %44 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @mt9m001_colour_fmts, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %25
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i64 @ALIGN(i64 %52, i32 2)
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 6
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %25
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %61 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %64 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.mt9m001_datafmt* @mt9m001_find_datafmt(i32 %59, i64 %62, i32 %65)
  store %struct.mt9m001_datafmt* %66, %struct.mt9m001_datafmt** %11, align 8
  %67 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %11, align 8
  %68 = icmp ne %struct.mt9m001_datafmt* %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %56
  %70 = load %struct.mt9m001*, %struct.mt9m001** %10, align 8
  %71 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %70, i32 0, i32 1
  %72 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %71, align 8
  store %struct.mt9m001_datafmt* %72, %struct.mt9m001_datafmt** %11, align 8
  %73 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %11, align 8
  %74 = getelementptr inbounds %struct.mt9m001_datafmt, %struct.mt9m001_datafmt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %56
  %79 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %11, align 8
  %80 = getelementptr inbounds %struct.mt9m001_datafmt, %struct.mt9m001_datafmt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %85 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %91 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %94 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %78
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %103 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %11, align 8
  %104 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %105 = call i32 @mt9m001_s_fmt(%struct.v4l2_subdev* %102, %struct.mt9m001_datafmt* %103, %struct.v4l2_mbus_framefmt* %104)
  store i32 %105, i32* %4, align 4
  br label %112

106:                                              ; preds = %78
  %107 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %107, i32 0, i32 0
  %109 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %110 = bitcast %struct.v4l2_mbus_framefmt* %108 to i8*
  %111 = bitcast %struct.v4l2_mbus_framefmt* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 40, i1 false)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %101, %22
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i64*, i64, i64, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.mt9m001_datafmt* @mt9m001_find_datafmt(i32, i64, i32) #1

declare dso_local i32 @mt9m001_s_fmt(%struct.v4l2_subdev*, %struct.mt9m001_datafmt*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
