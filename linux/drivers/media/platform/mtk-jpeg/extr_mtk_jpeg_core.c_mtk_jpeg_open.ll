; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32, i32 }
%struct.video_device = type { i32 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_5__, %struct.mtk_jpeg_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@mtk_jpeg_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mtk_jpeg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mtk_jpeg_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.mtk_jpeg_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.mtk_jpeg_dev* @video_drvdata(%struct.file* %8)
  store %struct.mtk_jpeg_dev* %9, %struct.mtk_jpeg_dev** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_jpeg_ctx* @kzalloc(i32 16, i32 %12)
  store %struct.mtk_jpeg_ctx* %13, %struct.mtk_jpeg_ctx** %6, align 8
  %14 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %15 = icmp ne %struct.mtk_jpeg_ctx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %28, i32 0, i32 0
  %30 = load %struct.video_device*, %struct.video_device** %5, align 8
  %31 = call i32 @v4l2_fh_init(%struct.TYPE_5__* %29, %struct.video_device* %30)
  %32 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %32, i32 0, i32 0
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %36, i32 0, i32 0
  %38 = call i32 @v4l2_fh_add(%struct.TYPE_5__* %37)
  %39 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %40 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %40, i32 0, i32 1
  store %struct.mtk_jpeg_dev* %39, %struct.mtk_jpeg_dev** %41, align 8
  %42 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %46 = load i32, i32* @mtk_jpeg_queue_init, align 4
  %47 = call i32 @v4l2_m2m_ctx_init(i32 %44, %struct.mtk_jpeg_ctx* %45, i32 %46)
  %48 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %27
  %58 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %7, align 4
  br label %69

63:                                               ; preds = %27
  %64 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %65 = call i32 @mtk_jpeg_set_default_params(%struct.mtk_jpeg_ctx* %64)
  %66 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %67 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 0, i32* %2, align 4
  br label %83

69:                                               ; preds = %57
  %70 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %70, i32 0, i32 0
  %72 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %71)
  %73 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %73, i32 0, i32 0
  %75 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %74)
  %76 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %69, %24
  %80 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %81 = call i32 @kfree(%struct.mtk_jpeg_ctx* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %63, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mtk_jpeg_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.mtk_jpeg_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_5__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mtk_jpeg_set_default_params(%struct.mtk_jpeg_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.mtk_jpeg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
