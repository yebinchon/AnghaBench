; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_reqbufs_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_reqbufs_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i64, i64, i32, i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i32, i32 }
%struct.v4l2_requestbuffers = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Freeing buffers\0A\00", align 1
@release_codec_buffers = common dso_local global i32 0, align 4
@QUEUE_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Allocating %d buffers for CAPTURE queue\0A\00", align 1
@QUEUE_BUFS_REQUESTED = common dso_local global i64 0, align 8
@alloc_codec_buffers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate decoding buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QUEUE_BUFS_MMAPED = common dso_local global i64 0, align 8
@try_run = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_INIT_BUFFERS_RET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Buffers have already been requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed allocating buffers for CAPTURE queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*, %struct.s5p_mfc_ctx*, %struct.v4l2_requestbuffers*)* @reqbufs_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reqbufs_capture(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_ctx* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca %struct.v4l2_requestbuffers*, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %4, align 8
  store %struct.s5p_mfc_ctx* %1, %struct.s5p_mfc_ctx** %5, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @s5p_mfc_clock_on()
  %9 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 4
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %18 = call i32 @vb2_reqbufs(i32* %16, %struct.v4l2_requestbuffers* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %125

22:                                               ; preds = %13
  %23 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @release_codec_buffers, align 4
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %28 = bitcast %struct.s5p_mfc_ctx* %27 to %struct.s5p_mfc_dev*
  %29 = call i32 @s5p_mfc_hw_call(i32 %25, i32 %26, %struct.s5p_mfc_dev* %28)
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %124

32:                                               ; preds = %3
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QUEUE_FREE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 4
  %51 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %52 = call i32 @vb2_reqbufs(i32* %50, %struct.v4l2_requestbuffers* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %125

56:                                               ; preds = %38
  %57 = load i64, i64* @QUEUE_BUFS_REQUESTED, align 8
  %58 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @alloc_codec_buffers, align 4
  %69 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %70 = bitcast %struct.s5p_mfc_ctx* %69 to %struct.s5p_mfc_dev*
  %71 = call i32 @s5p_mfc_hw_call(i32 %67, i32 %68, %struct.s5p_mfc_dev* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %56
  %75 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %78, i32 0, i32 4
  %80 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %81 = call i32 @vb2_reqbufs(i32* %79, %struct.v4l2_requestbuffers* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  %84 = load i64, i64* @QUEUE_FREE, align 8
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %125

87:                                               ; preds = %56
  %88 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i64, i64* @QUEUE_BUFS_MMAPED, align 8
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %101 = bitcast %struct.s5p_mfc_ctx* %100 to %struct.s5p_mfc_dev*
  %102 = call i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_dev* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %106 = bitcast %struct.s5p_mfc_ctx* %105 to %struct.s5p_mfc_dev*
  %107 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev* %106)
  br label %108

108:                                              ; preds = %104, %87
  %109 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %110 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @try_run, align 4
  %113 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %114 = call i32 @s5p_mfc_hw_call(i32 %111, i32 %112, %struct.s5p_mfc_dev* %113)
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %116 = bitcast %struct.s5p_mfc_ctx* %115 to %struct.s5p_mfc_dev*
  %117 = load i32, i32* @S5P_MFC_R2H_CMD_INIT_BUFFERS_RET, align 4
  %118 = call i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev* %116, i32 %117, i32 0)
  br label %123

119:                                              ; preds = %32
  %120 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %108
  br label %124

124:                                              ; preds = %123, %22
  br label %125

125:                                              ; preds = %124, %74, %55, %21
  %126 = call i32 (...) @s5p_mfc_clock_off()
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @mfc_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @vb2_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i64 @s5p_mfc_ctx_ready(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
