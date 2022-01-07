; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FIMC_SD_PAD_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"target %#x: l:%d, t:%d, %dx%d, f_w: %d, f_h: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @fimc_subdev_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_subdev_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_ctx*, align 8
  %10 = alloca %struct.fimc_frame*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.fimc_dev* %14, %struct.fimc_dev** %8, align 8
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.fimc_ctx*, %struct.fimc_ctx** %17, align 8
  store %struct.fimc_ctx* %18, %struct.fimc_ctx** %9, align 8
  %19 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %19, i32 0, i32 1
  store %struct.fimc_frame* %20, %struct.fimc_frame** %10, align 8
  %21 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %21, i32 0, i32 3
  store %struct.v4l2_rect* %22, %struct.v4l2_rect** %11, align 8
  %23 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FIMC_SD_PAD_SOURCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %140

31:                                               ; preds = %3
  %32 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %33 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %75 [
    i32 130, label %38
    i32 128, label %41
    i32 129, label %59
    i32 131, label %66
  ]

38:                                               ; preds = %31
  %39 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %39, i32 0, i32 0
  store %struct.fimc_frame* %40, %struct.fimc_frame** %10, align 8
  br label %41

41:                                               ; preds = %31, %38
  %42 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %43 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %48 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %53 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %57 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %140

59:                                               ; preds = %31
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %61 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %62 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %60, %struct.v4l2_subdev_pad_config* %61, i64 %64)
  store %struct.v4l2_rect* %65, %struct.v4l2_rect** %12, align 8
  br label %81

66:                                               ; preds = %31
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %68 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %69 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev* %67, %struct.v4l2_subdev_pad_config* %68, i64 %71)
  store %struct.v4l2_rect* %72, %struct.v4l2_rect** %12, align 8
  %73 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %74 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %73, i32 0, i32 0
  store %struct.fimc_frame* %74, %struct.fimc_frame** %10, align 8
  br label %81

75:                                               ; preds = %31
  %76 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %77 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %140

81:                                               ; preds = %66, %59
  %82 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %88, i32 0, i32 3
  %90 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %91 = bitcast %struct.v4l2_rect* %89 to i8*
  %92 = bitcast %struct.v4l2_rect* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 4 %92, i64 16, i1 false)
  br label %114

93:                                               ; preds = %81
  %94 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %95 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %100 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %105 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %110 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %113 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %93, %87
  %115 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %128 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %131 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %134 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135)
  %137 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %138 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %114, %75, %41, %28
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg(i8*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
