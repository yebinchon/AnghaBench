; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtk_jpeg_dev = type { i32 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mtk_jpeg_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.mtk_jpeg_dev*, align 8
  %4 = alloca %struct.mtk_jpeg_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.mtk_jpeg_dev* @video_drvdata(%struct.file* %5)
  store %struct.mtk_jpeg_dev* %6, %struct.mtk_jpeg_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i32 %9)
  store %struct.mtk_jpeg_ctx* %10, %struct.mtk_jpeg_ctx** %4, align 8
  %11 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @v4l2_m2m_ctx_release(i32 %17)
  %19 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %19, i32 0, i32 0
  %21 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %20)
  %22 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %22, i32 0, i32 0
  %24 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %23)
  %25 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %26 = call i32 @kfree(%struct.mtk_jpeg_ctx* %25)
  %27 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local %struct.mtk_jpeg_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mtk_jpeg_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
