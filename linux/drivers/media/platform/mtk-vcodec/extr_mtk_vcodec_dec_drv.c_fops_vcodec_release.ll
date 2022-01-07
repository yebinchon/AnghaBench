; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_drv.c_fops_vcodec_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_drv.c_fops_vcodec_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtk_vcodec_dev = type { i32, i32 }
%struct.mtk_vcodec_ctx = type { %struct.mtk_vcodec_ctx*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"[%d] decoder\00", align 1
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
  %12 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mtk_v4l2_debug(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_m2m_ctx_release(i32 %20)
  %22 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %23 = call i32 @mtk_vcodec_dec_release(%struct.mtk_vcodec_ctx* %22)
  %24 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %24, i32 0, i32 3
  %26 = call i64 @v4l2_fh_is_singular(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %29, i32 0, i32 1
  %31 = call i32 @mtk_vcodec_dec_pw_off(i32* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %33, i32 0, i32 3
  %35 = call i32 @v4l2_fh_del(i32* %34)
  %36 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %36, i32 0, i32 3
  %38 = call i32 @v4l2_fh_exit(i32* %37)
  %39 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %39, i32 0, i32 2
  %41 = call i32 @v4l2_ctrl_handler_free(i32* %40)
  %42 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %42, i32 0, i32 1
  %44 = call i32 @list_del_init(i32* %43)
  %45 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %45, i32 0, i32 0
  %47 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %46, align 8
  %48 = call i32 @kfree(%struct.mtk_vcodec_ctx* %47)
  %49 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %50 = call i32 @kfree(%struct.mtk_vcodec_ctx* %49)
  %51 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret i32 0
}

declare dso_local %struct.mtk_vcodec_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @mtk_vcodec_dec_release(%struct.mtk_vcodec_ctx*) #1

declare dso_local i64 @v4l2_fh_is_singular(i32*) #1

declare dso_local i32 @mtk_vcodec_dec_pw_off(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
