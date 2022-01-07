; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i32, i32, i64, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i64, i32, i64 }

@MFCINST_FINISHING = common dso_local global i64 0, align 8
@MFCINST_RUNNING = common dso_local global i64 0, align 8
@MFCINST_ABORT = common dso_local global i64 0, align 8
@S5P_MFC_R2H_CMD_FRAME_DONE_RET = common dso_local global i32 0, align 4
@MFCINST_FINISHED = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @s5p_mfc_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %8)
  store %struct.s5p_mfc_ctx* %9, %struct.s5p_mfc_ctx** %4, align 8
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %11, align 8
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %5, align 8
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MFCINST_FINISHING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MFCINST_RUNNING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18, %1
  %25 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* @MFCINST_ABORT, align 8
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %42 = load i32, i32* @S5P_MFC_R2H_CMD_FRAME_DONE_RET, align 4
  %43 = call i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37, %32, %24, %18
  %45 = load i64, i64* @MFCINST_FINISHED, align 8
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %58, i32 0, i32 6
  %60 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %60, i32 0, i32 7
  %62 = call i32 @s5p_mfc_cleanup_queue(i32* %59, i32* %61)
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 6
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %57, %44
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %76 = call i32 @cleanup_ref_queue(%struct.s5p_mfc_ctx* %75)
  %77 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %77, i32 0, i32 3
  %79 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %79, i32 0, i32 4
  %81 = call i32 @s5p_mfc_cleanup_queue(i32* %78, i32* %80)
  %82 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %82, i32 0, i32 3
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %74, %68
  %88 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %88, i32 0, i32 1
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret void
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s5p_mfc_cleanup_queue(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cleanup_ref_queue(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
