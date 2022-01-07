; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.venus_inst = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vdec_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.venus_inst* %6, %struct.venus_inst** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %19 = call i32 @vdec_stop_capture(%struct.venus_inst* %18)
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %22 = call i32 @vdec_stop_output(%struct.venus_inst* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %25 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %26 = call i32 @venus_helper_buffers_done(%struct.venus_inst* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %38 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %42

39:                                               ; preds = %30
  %40 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %41 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %45 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vdec_stop_capture(%struct.venus_inst*) #1

declare dso_local i32 @vdec_stop_output(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_buffers_done(%struct.venus_inst*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
