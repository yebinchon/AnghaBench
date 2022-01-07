; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_LE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_GE = common dso_local global i32 0, align 4
@ST_CAPT_APPLY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @fimc_cap_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_cap_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_ctx*, align 8
  %10 = alloca %struct.v4l2_rect, align 4
  %11 = alloca %struct.fimc_frame*, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.fimc_dev* @video_drvdata(%struct.file* %13)
  store %struct.fimc_dev* %14, %struct.fimc_dev** %8, align 8
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.fimc_ctx*, %struct.fimc_ctx** %17, align 8
  store %struct.fimc_ctx* %18, %struct.fimc_ctx** %9, align 8
  %19 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %19, i32 0, i32 2
  %21 = bitcast %struct.v4l2_rect* %10 to i8*
  %22 = bitcast %struct.v4l2_rect* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 16, i1 false)
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %123

31:                                               ; preds = %3
  %32 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %38, i32 0, i32 1
  store %struct.fimc_frame* %39, %struct.fimc_frame** %11, align 8
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %47, i32 0, i32 0
  store %struct.fimc_frame* %48, %struct.fimc_frame** %11, align 8
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %123

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.fimc_ctx*, %struct.fimc_ctx** %9, align 8
  %55 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fimc_capture_try_selection(%struct.fimc_ctx* %54, %struct.v4l2_rect* %10, i32 %57)
  %59 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 2
  %68 = call i32 @enclosed_rectangle(%struct.v4l2_rect* %10, %struct.v4l2_rect* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ERANGE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %123

73:                                               ; preds = %65, %53
  %74 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %81, i32 0, i32 2
  %83 = call i32 @enclosed_rectangle(%struct.v4l2_rect* %82, %struct.v4l2_rect* %10)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ERANGE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %123

88:                                               ; preds = %80, %73
  %89 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %89, i32 0, i32 2
  %91 = bitcast %struct.v4l2_rect* %90 to i8*
  %92 = bitcast %struct.v4l2_rect* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 16, i1 false)
  %93 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %94 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %93, i32 0, i32 1
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.fimc_frame*, %struct.fimc_frame** %11, align 8
  %98 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @set_frame_crop(%struct.fimc_frame* %97, i32 %101, i32 %105, i32 %109, i32 %113)
  %115 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %116 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %115, i32 0, i32 1
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i32, i32* @ST_CAPT_APPLY_CFG, align 4
  %120 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %121 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %88, %85, %70, %49, %28
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fimc_capture_try_selection(%struct.fimc_ctx*, %struct.v4l2_rect*, i32) #1

declare dso_local i32 @enclosed_rectangle(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_frame_crop(%struct.fimc_frame*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
