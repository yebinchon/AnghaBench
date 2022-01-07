; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_frame }
%struct.fimc_frame = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @fimc_subdev_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_subdev_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_ctx*, align 8
  %10 = alloca %struct.fimc_frame*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.fimc_dev* %13, %struct.fimc_dev** %8, align 8
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %15 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %16, align 8
  store %struct.fimc_ctx* %17, %struct.fimc_ctx** %9, align 8
  %18 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %18, i32 0, i32 0
  store %struct.fimc_frame* %19, %struct.fimc_frame** %10, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %27 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %26, %struct.v4l2_subdev_pad_config* %27, i32 %30)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %11, align 8
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 2
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %35 = bitcast %struct.v4l2_mbus_framefmt* %33 to i8*
  %36 = bitcast %struct.v4l2_mbus_framefmt* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %95

37:                                               ; preds = %3
  %38 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %38, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %39, %struct.v4l2_mbus_framefmt** %11, align 8
  %40 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %41 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %81 [
    i32 128, label %46
    i32 129, label %73
    i32 130, label %80
  ]

46:                                               ; preds = %37
  %47 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %48 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp eq %struct.TYPE_3__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %56 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %64 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %69 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %88

73:                                               ; preds = %37
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %75 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %76 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = bitcast %struct.v4l2_mbus_framefmt* %74 to i8*
  %79 = bitcast %struct.v4l2_mbus_framefmt* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 8 %79, i64 16, i1 false)
  br label %88

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %37, %80
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %83 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %84 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = bitcast %struct.v4l2_mbus_framefmt* %82 to i8*
  %87 = bitcast %struct.v4l2_mbus_framefmt* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 8 %87, i64 16, i1 false)
  br label %88

88:                                               ; preds = %81, %73, %62
  %89 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %90 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %93 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %94 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %25
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
