; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i64, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i64, i32, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFCINST_GOT_INST = common dso_local global i64 0, align 8
@S5P_MFC_R2H_CMD_SEQ_DONE_RET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Need minimum %d OUTPUT buffers\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@try_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @s5p_mfc_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5p_mfc_ctx*, align 8
  %7 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %10)
  store %struct.s5p_mfc_ctx* %11, %struct.s5p_mfc_ctx** %6, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 4
  %14 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %13, align 8
  store %struct.s5p_mfc_dev* %14, %struct.s5p_mfc_dev** %7, align 8
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %16 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %2
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MFCINST_GOT_INST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %45 = load i32, i32* @S5P_MFC_R2H_CMD_SEQ_DONE_RET, align 4
  %46 = call i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %43, %38, %30, %24
  %48 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mfc_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENOBUFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %18, %2
  %64 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %65 = call i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_ctx* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %69 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx* %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @try_run, align 4
  %75 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %76 = call i32 @s5p_mfc_hw_call(i32 %73, i32 %74, %struct.s5p_mfc_dev* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %55
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @mfc_err(i8*, i64) #1

declare dso_local i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
