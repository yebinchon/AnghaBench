; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i32, i64, i32, i32, i64, i64, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i64, i32, i32, i64 }

@MFCINST_FINISHING = common dso_local global i64 0, align 8
@MFCINST_RUNNING = common dso_local global i64 0, align 8
@MFCINST_ABORT = common dso_local global i64 0, align 8
@S5P_MFC_R2H_CMD_FRAME_DONE_RET = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFCINST_FLUSH = common dso_local global i64 0, align 8
@try_run = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_DPB_FLUSH_RET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Err flushing buffers\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @s5p_mfc_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %9)
  store %struct.s5p_mfc_ctx* %10, %struct.s5p_mfc_ctx** %4, align 8
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %11, i32 0, i32 10
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %12, align 8
  store %struct.s5p_mfc_dev* %13, %struct.s5p_mfc_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MFCINST_FINISHING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MFCINST_RUNNING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23, %1
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i64, i64* @MFCINST_ABORT, align 8
  %44 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %51 = load i32, i32* @S5P_MFC_R2H_CMD_FRAME_DONE_RET, align 4
  %52 = call i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %50, i32 %51, i32 0)
  store i32 1, i32* %6, align 4
  %53 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %42, %37, %29, %23
  %58 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %59 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %115

63:                                               ; preds = %57
  %64 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %64, i32 0, i32 8
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 9
  %68 = call i32 @s5p_mfc_cleanup_queue(i32* %65, i32* %67)
  %69 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %69, i32 0, i32 8
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 6
  store i64 0, i64* %77, align 8
  %78 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %79 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %63
  %82 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MFCINST_RUNNING, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %81
  %88 = load i64, i64* @MFCINST_FLUSH, align 8
  %89 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %92 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx* %91)
  %93 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @try_run, align 4
  %97 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %98 = call i32 @s5p_mfc_hw_call(i32 %95, i32 %96, %struct.s5p_mfc_dev* %97)
  %99 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %99, i32 0, i32 1
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %104 = load i32, i32* @S5P_MFC_R2H_CMD_DPB_FLUSH_RET, align 4
  %105 = call i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %103, i32 %104, i32 0)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = call i32 @mfc_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %87
  %110 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %111 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %110, i32 0, i32 1
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @spin_lock_irqsave(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %109, %81, %63
  br label %133

115:                                              ; preds = %57
  %116 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %117 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %122, i32 0, i32 4
  %124 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %125 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %124, i32 0, i32 5
  %126 = call i32 @s5p_mfc_cleanup_queue(i32* %123, i32* %125)
  %127 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %127, i32 0, i32 4
  %129 = call i32 @INIT_LIST_HEAD(i32* %128)
  %130 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %131 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %121, %115
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i64, i64* @MFCINST_RUNNING, align 8
  %138 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %133
  %141 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %141, i32 0, i32 1
  %143 = load i64, i64* %3, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  ret void
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @s5p_mfc_cleanup_queue(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
