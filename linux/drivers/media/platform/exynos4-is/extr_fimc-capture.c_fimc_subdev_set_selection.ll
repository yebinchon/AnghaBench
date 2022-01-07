; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_subdev_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { i32, %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { i32 }

@FIMC_SD_PAD_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@ST_CAPT_APPLY_CFG = common dso_local global i32 0, align 4
@FIMC_COMPOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"target %#x: (%d,%d)/%dx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @fimc_subdev_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_subdev_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_ctx*, align 8
  %10 = alloca %struct.fimc_frame*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  %13 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.fimc_dev* %15, %struct.fimc_dev** %8, align 8
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.fimc_ctx*, %struct.fimc_ctx** %18, align 8
  store %struct.fimc_ctx* %19, %struct.fimc_ctx** %9, align 8
  %20 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %20, i32 0, i32 2
  store %struct.fimc_frame* %21, %struct.fimc_frame** %10, align 8
  %22 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %22, i32 0, i32 3
  store %struct.v4l2_rect* %23, %struct.v4l2_rect** %11, align 8
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FIMC_SD_PAD_SOURCE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %134

32:                                               ; preds = %3
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %34 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %38 = call i32 @fimc_capture_try_selection(%struct.fimc_ctx* %36, %struct.v4l2_rect* %37, i32 128)
  %39 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %58 [
    i32 128, label %42
    i32 129, label %49
  ]

42:                                               ; preds = %32
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %45 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %43, %struct.v4l2_subdev_pad_config* %44, i64 %47)
  store %struct.v4l2_rect* %48, %struct.v4l2_rect** %12, align 8
  br label %64

49:                                               ; preds = %32
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %51 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %52 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev* %50, %struct.v4l2_subdev_pad_config* %51, i64 %54)
  store %struct.v4l2_rect* %55, %struct.v4l2_rect** %12, align 8
  %56 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %56, i32 0, i32 1
  store %struct.fimc_frame* %57, %struct.fimc_frame** %10, align 8
  br label %64

58:                                               ; preds = %32
  %59 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %60 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %134

64:                                               ; preds = %49, %42
  %65 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %72 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %72, i32 0, i32 3
  %74 = bitcast %struct.v4l2_rect* %71 to i8*
  %75 = bitcast %struct.v4l2_rect* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %75, i64 16, i1 false)
  br label %114

76:                                               ; preds = %64
  %77 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %78 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @set_frame_crop(%struct.fimc_frame* %81, i32 %84, i32 %87, i32 %90, i32 %93)
  %95 = load i32, i32* @ST_CAPT_APPLY_CFG, align 4
  %96 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %97 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %96, i32 0, i32 2
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 129
  br i1 %102, label %103, label %109

103:                                              ; preds = %76
  %104 = load i32, i32* @FIMC_COMPOSE, align 4
  %105 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %76
  %110 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %111 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %110, i32 0, i32 1
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %109, %70
  %115 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
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
  %130 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126, i32 %129)
  %131 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %132 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %114, %58, %29
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fimc_capture_try_selection(%struct.fimc_ctx*, %struct.v4l2_rect*, i32) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_frame_crop(%struct.fimc_frame*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
