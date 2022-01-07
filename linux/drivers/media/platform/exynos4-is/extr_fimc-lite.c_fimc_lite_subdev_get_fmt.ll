; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.fimc_lite = type { i32, %struct.flite_frame }
%struct.flite_frame = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@FLITE_SD_PAD_SINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @fimc_lite_subdev_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_subdev_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.fimc_lite*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.flite_frame*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.fimc_lite* %12, %struct.fimc_lite** %8, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %14, %struct.v4l2_mbus_framefmt** %9, align 8
  %15 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %16 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %15, i32 0, i32 1
  store %struct.flite_frame* %16, %struct.flite_frame** %10, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.v4l2_mbus_framefmt* @__fimc_lite_subdev_get_try_fmt(%struct.v4l2_subdev* %23, %struct.v4l2_subdev_pad_config* %24, i64 %27)
  store %struct.v4l2_mbus_framefmt* %28, %struct.v4l2_mbus_framefmt** %9, align 8
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 2
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = bitcast %struct.v4l2_mbus_framefmt* %30 to i8*
  %33 = bitcast %struct.v4l2_mbus_framefmt* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %36 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %39 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %46 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %34
  %58 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %59 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %64 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %81

68:                                               ; preds = %34
  %69 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %70 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %76 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %68, %57
  %82 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %83 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__fimc_lite_subdev_get_try_fmt(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
