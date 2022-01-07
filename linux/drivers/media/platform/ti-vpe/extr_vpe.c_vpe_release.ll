; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpe_dev = type { i32, i32 }
%struct.vpe_ctx = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"releasing instance %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"last instance released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vpe_dev*, align 8
  %4 = alloca %struct.vpe_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.vpe_dev* @video_drvdata(%struct.file* %5)
  store %struct.vpe_dev* %6, %struct.vpe_dev** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.vpe_ctx* @file2ctx(%struct.file* %7)
  store %struct.vpe_ctx* %8, %struct.vpe_ctx** %4, align 8
  %9 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %10 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %11 = call i32 (%struct.vpe_dev*, i8*, ...) @vpe_dbg(%struct.vpe_dev* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.vpe_ctx* %10)
  %12 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %16 = call i32 @free_mv_buffers(%struct.vpe_ctx* %15)
  %17 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %17, i32 0, i32 5
  %19 = call i32 @vpdma_free_desc_list(i32* %18)
  %20 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %20, i32 0, i32 4
  %22 = call i32 @vpdma_free_desc_buf(i32* %21)
  %23 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %23, i32 0, i32 3
  %25 = call i32 @vpdma_free_desc_buf(i32* %24)
  %26 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %26, i32 0, i32 2
  %28 = call i32 @vpdma_free_desc_buf(i32* %27)
  %29 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %29, i32 0, i32 0
  %31 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %30)
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 0
  %34 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %33)
  %35 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %35, i32 0, i32 1
  %37 = call i32 @v4l2_ctrl_handler_free(i32* %36)
  %38 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l2_m2m_ctx_release(i32 %41)
  %43 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %44 = call i32 @kfree(%struct.vpe_ctx* %43)
  %45 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %46 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %45, i32 0, i32 1
  %47 = call i64 @atomic_dec_return(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %51 = call i32 (%struct.vpe_dev*, i8*, ...) @vpe_dbg(%struct.vpe_dev* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %54 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local %struct.vpe_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.vpe_ctx* @file2ctx(%struct.file*) #1

declare dso_local i32 @vpe_dbg(%struct.vpe_dev*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_mv_buffers(%struct.vpe_ctx*) #1

declare dso_local i32 @vpdma_free_desc_list(i32*) #1

declare dso_local i32 @vpdma_free_desc_buf(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @kfree(%struct.vpe_ctx*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
