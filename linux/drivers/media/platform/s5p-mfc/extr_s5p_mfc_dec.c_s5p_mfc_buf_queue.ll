; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, i32, %struct.s5p_mfc_buf*, i32, i32, %struct.s5p_mfc_buf*, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_buf = type { i32, i32 }
%struct.s5p_mfc_dev = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@MFC_BUF_FLAG_USED = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported buffer type (%d)\0A\00", align 1
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
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 6
  %26 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %25, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %26, i64 %29
  store %struct.s5p_mfc_buf* %30, %struct.s5p_mfc_buf** %7, align 8
  %31 = load i32, i32* @MFC_BUF_FLAG_USED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %41, i32 0, i32 0
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 5
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %103

54:                                               ; preds = %1
  %55 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %56 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %61, i32 0, i32 3
  %63 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %62, align 8
  %64 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %65 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %63, i64 %66
  store %struct.s5p_mfc_buf* %67, %struct.s5p_mfc_buf** %7, align 8
  %68 = load i32, i32* @MFC_BUF_FLAG_USED, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %71 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %79 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %81, i32 0, i32 2
  %83 = call i32 @set_bit(i64 %80, i32* %82)
  %84 = load %struct.s5p_mfc_buf*, %struct.s5p_mfc_buf** %7, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_buf, %struct.s5p_mfc_buf* %84, i32 0, i32 0
  %86 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %86, i32 0, i32 1
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %102

97:                                               ; preds = %54
  %98 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %99 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @mfc_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %97, %60
  br label %103

103:                                              ; preds = %102, %23
  %104 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %105 = call i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_ctx* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %109 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_ctx* %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %112 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @try_run, align 4
  %115 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %116 = call i32 @s5p_mfc_hw_call(i32 %113, i32 %114, %struct.s5p_mfc_dev* %115)
  ret void
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i64, i32*) #1

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
