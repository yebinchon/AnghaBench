; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32, %struct.s5p_mfc_buf*, i32, i32, %struct.s5p_mfc_buf*, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_buf = type { i32, i32 }
%struct.s5p_mfc_dev = type { i32, i32 }

@MFCINST_ERROR = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFC_BUF_FLAG_USED = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unsupported buffer type (%d)\0A\00", align 1
@try_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @s5p_mfc_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.s5p_mfc_buf*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 1
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %3, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %13)
  store %struct.s5p_mfc_ctx* %14, %struct.s5p_mfc_ctx** %4, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 7
  %17 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %16, align 8
  store %struct.s5p_mfc_dev* %17, %struct.s5p_mfc_dev** %5, align 8
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MFCINST_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %25 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %26 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %24, i32 %25)
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %28 = call i32 @cleanup_ref_queue(%struct.s5p_mfc_ctx* %27)
  br label %123

29:                                               ; preds = %1
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %36, i32 0, i32 6
  %38 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %37, align 8
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %38, i64 %41
  store %struct.s5p_mfc_buf* %42, %struct.s5p_mfc_buf** %7, align 8
  %43 = load i32, i32* @MFC_BUF_FLAG_USED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %53, i32 0, i32 0
  %55 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %55, i32 0, i32 5
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %109

66:                                               ; preds = %29
  %67 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %68 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %73, i32 0, i32 3
  %75 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %74, align 8
  %76 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %77 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %75, i64 %78
  store %struct.s5p_mfc_buf* %79, %struct.s5p_mfc_buf** %7, align 8
  %80 = load i32, i32* @MFC_BUF_FLAG_USED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %90, i32 0, i32 0
  %92 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %92, i32 0, i32 2
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %99, i32 0, i32 1
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %108

103:                                              ; preds = %66
  %104 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %105 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @mfc_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %103, %72
  br label %109

109:                                              ; preds = %108, %35
  %110 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %111 = call i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_ctx* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %115 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx* %114)
  br label %116

116:                                              ; preds = %113, %109
  %117 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @try_run, align 4
  %121 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %122 = call i32 @s5p_mfc_hw_call(i32 %119, i32 %120, %struct.s5p_mfc_dev* %121)
  br label %123

123:                                              ; preds = %116, %23
  ret void
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @cleanup_ref_queue(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

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
