; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_get_q_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_get_q_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_q_data = type { i32 }
%struct.s5p_jpeg_ctx = type { %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s5p_jpeg_q_data* (%struct.s5p_jpeg_ctx*, i32)* @get_q_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s5p_jpeg_q_data* @get_q_data(%struct.s5p_jpeg_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_jpeg_q_data*, align 8
  %4 = alloca %struct.s5p_jpeg_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %10, i32 0, i32 1
  store %struct.s5p_jpeg_q_data* %11, %struct.s5p_jpeg_q_data** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %17, i32 0, i32 0
  store %struct.s5p_jpeg_q_data* %18, %struct.s5p_jpeg_q_data** %3, align 8
  br label %20

19:                                               ; preds = %12
  store %struct.s5p_jpeg_q_data* null, %struct.s5p_jpeg_q_data** %3, align 8
  br label %20

20:                                               ; preds = %19, %16, %9
  %21 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %3, align 8
  ret %struct.s5p_jpeg_q_data* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
