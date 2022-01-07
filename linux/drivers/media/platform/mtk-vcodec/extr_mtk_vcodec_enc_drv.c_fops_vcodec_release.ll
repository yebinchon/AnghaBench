; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_drv.c_fops_vcodec_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_drv.c_fops_vcodec_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtk_vcodec_dev = type { i32 }
%struct.mtk_vcodec_ctx = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"[%d] encoder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fops_vcodec_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_vcodec_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.mtk_vcodec_dev*, align 8
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.mtk_vcodec_dev* @video_drvdata(%struct.file* %5)
  store %struct.mtk_vcodec_dev* %6, %struct.mtk_vcodec_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i32 %9)
  store %struct.mtk_vcodec_ctx* %10, %struct.mtk_vcodec_ctx** %4, align 8
  %11 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mtk_v4l2_debug(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %19 = call i32 @mtk_vcodec_enc_release(%struct.mtk_vcodec_ctx* %18)
  %20 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %20, i32 0, i32 3
  %22 = call i32 @v4l2_fh_del(i32* %21)
  %23 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %23, i32 0, i32 3
  %25 = call i32 @v4l2_fh_exit(i32* %24)
  %26 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %26, i32 0, i32 2
  %28 = call i32 @v4l2_ctrl_handler_free(i32* %27)
  %29 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_m2m_ctx_release(i32 %31)
  %33 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %33, i32 0, i32 0
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %37 = call i32 @kfree(%struct.mtk_vcodec_ctx* %36)
  %38 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  ret i32 0
}

declare dso_local %struct.mtk_vcodec_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mtk_vcodec_enc_release(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
