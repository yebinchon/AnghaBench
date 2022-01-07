; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i8*, i8* }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32, %struct.v4l2_rect, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i64 0, align 8
@MT9M111_MAX_WIDTH = common dso_local global i64 0, align 8
@MT9M111_MAX_HEIGHT = common dso_local global i64 0, align 8
@MT9M111_MIN_DARK_COLS = common dso_local global i64 0, align 8
@MT9M111_MIN_DARK_ROWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @mt9m111_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.mt9m111*, align 8
  %10 = alloca %struct.v4l2_rect, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %18 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %17)
  store %struct.mt9m111* %18, %struct.mt9m111** %9, align 8
  %19 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %19, i32 0, i32 2
  %21 = bitcast %struct.v4l2_rect* %10 to i8*
  %22 = bitcast %struct.v4l2_rect* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  store i32 0, i32* %14, align 4
  %23 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %120

37:                                               ; preds = %28
  %38 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %39 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MEDIA_BUS_FMT_SBGGR8_1X8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %47 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %56 = load i64, i64* @MT9M111_MAX_WIDTH, align 8
  %57 = load i32, i32* %14, align 4
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %59 = load i64, i64* @MT9M111_MAX_HEIGHT, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @v4l_bound_align_image(i64* %55, i32 2, i64 %56, i32 %57, i64* %58, i32 2, i64 %59, i32 %60, i32 0)
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* @MT9M111_MIN_DARK_COLS, align 8
  %65 = load i64, i64* @MT9M111_MIN_DARK_COLS, align 8
  %66 = load i64, i64* @MT9M111_MAX_WIDTH, align 8
  %67 = add nsw i64 %65, %66
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = call i8* @clamp(i8* %63, i64 %64, i64 %70)
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* @MT9M111_MIN_DARK_ROWS, align 8
  %76 = load i64, i64* @MT9M111_MIN_DARK_ROWS, align 8
  %77 = load i64, i64* @MT9M111_MAX_HEIGHT, align 8
  %78 = add nsw i64 %76, %77
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = call i8* @clamp(i8* %74, i64 %75, i64 %81)
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  %84 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %85 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @min(i32 %86, i64 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %91 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @min(i32 %92, i64 %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %100 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @mt9m111_setup_geometry(%struct.mt9m111* %96, %struct.v4l2_rect* %10, i32 %97, i32 %98, i64 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %54
  %108 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %109 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %108, i32 0, i32 2
  %110 = bitcast %struct.v4l2_rect* %109 to i8*
  %111 = bitcast %struct.v4l2_rect* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 32, i1 false)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %114 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.mt9m111*, %struct.mt9m111** %9, align 8
  %117 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %107, %54
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %34
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i64*, i32, i64, i32, i32) #1

declare dso_local i8* @clamp(i8*, i64, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @mt9m111_setup_geometry(%struct.mt9m111*, %struct.v4l2_rect*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
