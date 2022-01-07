; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.s5p_jpeg = type { i32, i32, %struct.video_device* }
%struct.video_device = type { i32 }
%struct.s5p_jpeg_ctx = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, %struct.s5p_jpeg*, i32 }
%struct.TYPE_8__ = type { %struct.s5p_jpeg_fmt* }
%struct.s5p_jpeg_fmt = type { i32 }
%struct.TYPE_7__ = type { %struct.s5p_jpeg_fmt* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@S5P_JPEG_ENCODE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@S5P_JPEG_DECODE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@EXYNOS3250_DEC_SCALE_FACTOR_8_8 = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @s5p_jpeg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.s5p_jpeg*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.s5p_jpeg_ctx*, align 8
  %7 = alloca %struct.s5p_jpeg_fmt*, align 8
  %8 = alloca %struct.s5p_jpeg_fmt*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.s5p_jpeg* @video_drvdata(%struct.file* %10)
  store %struct.s5p_jpeg* %11, %struct.s5p_jpeg** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.s5p_jpeg_ctx* @kzalloc(i32 56, i32 %14)
  store %struct.s5p_jpeg_ctx* %15, %struct.s5p_jpeg_ctx** %6, align 8
  %16 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %17 = icmp ne %struct.s5p_jpeg_ctx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %131

29:                                               ; preds = %21
  %30 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %30, i32 0, i32 0
  %32 = load %struct.video_device*, %struct.video_device** %5, align 8
  %33 = call i32 @v4l2_fh_init(%struct.TYPE_9__* %31, %struct.video_device* %32)
  %34 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %34, i32 0, i32 6
  %36 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %39, i32 0, i32 0
  %41 = load %struct.file*, %struct.file** %3, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %43, i32 0, i32 0
  %45 = call i32 @v4l2_fh_add(%struct.TYPE_9__* %44)
  %46 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %47 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %47, i32 0, i32 5
  store %struct.s5p_jpeg* %46, %struct.s5p_jpeg** %48, align 8
  %49 = load %struct.video_device*, %struct.video_device** %5, align 8
  %50 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %51 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %50, i32 0, i32 2
  %52 = load %struct.video_device*, %struct.video_device** %51, align 8
  %53 = icmp eq %struct.video_device* %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %29
  %55 = load i32, i32* @S5P_JPEG_ENCODE, align 4
  %56 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %59 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %60 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %61 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %58, i32 %59, i32 %60)
  store %struct.s5p_jpeg_fmt* %61, %struct.s5p_jpeg_fmt** %7, align 8
  %62 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %63 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %64 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %65 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %62, i32 %63, i32 %64)
  store %struct.s5p_jpeg_fmt* %65, %struct.s5p_jpeg_fmt** %8, align 8
  br label %81

66:                                               ; preds = %29
  %67 = load i32, i32* @S5P_JPEG_DECODE, align 4
  %68 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %71 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %72 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %73 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %70, i32 %71, i32 %72)
  store %struct.s5p_jpeg_fmt* %73, %struct.s5p_jpeg_fmt** %7, align 8
  %74 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %75 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %76 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %77 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %74, i32 %75, i32 %76)
  store %struct.s5p_jpeg_fmt* %77, %struct.s5p_jpeg_fmt** %8, align 8
  %78 = load i32, i32* @EXYNOS3250_DEC_SCALE_FACTOR_8_8, align 4
  %79 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %66, %54
  %82 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %83 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %86 = load i32, i32* @queue_init, align 4
  %87 = call i32 @v4l2_m2m_ctx_init(i32 %84, %struct.s5p_jpeg_ctx* %85, i32 %86)
  %88 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %81
  %98 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %99 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %9, align 4
  br label %121

103:                                              ; preds = %81
  %104 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %105 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store %struct.s5p_jpeg_fmt* %104, %struct.s5p_jpeg_fmt** %107, align 8
  %108 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %8, align 8
  %109 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store %struct.s5p_jpeg_fmt* %108, %struct.s5p_jpeg_fmt** %111, align 8
  %112 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %113 = call i32 @s5p_jpeg_controls_create(%struct.s5p_jpeg_ctx* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %121

117:                                              ; preds = %103
  %118 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %119 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  store i32 0, i32* %2, align 4
  br label %135

121:                                              ; preds = %116, %97
  %122 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %123 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %122, i32 0, i32 0
  %124 = call i32 @v4l2_fh_del(%struct.TYPE_9__* %123)
  %125 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %125, i32 0, i32 0
  %127 = call i32 @v4l2_fh_exit(%struct.TYPE_9__* %126)
  %128 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %129 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %131

131:                                              ; preds = %121, %26
  %132 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %133 = call i32 @kfree(%struct.s5p_jpeg_ctx* %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %117, %18
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.s5p_jpeg* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.s5p_jpeg_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_9__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_9__*) #1

declare dso_local %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.s5p_jpeg_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @s5p_jpeg_controls_create(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.s5p_jpeg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
