; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32 }

@HFI_FLUSH_ALL = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_STOPPED = common dso_local global i32 0, align 4
@HFI_FLUSH_OUTPUT = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_CAPTURE_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @vdec_stop_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_stop_capture(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 130, label %8
    i32 129, label %12
    i32 128, label %18
  ]

8:                                                ; preds = %1
  %9 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %10 = load i32, i32* @HFI_FLUSH_ALL, align 4
  %11 = call i32 @hfi_session_flush(%struct.venus_inst* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %1, %8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %14 = call i32 @vdec_cancel_dst_buffers(%struct.venus_inst* %13)
  %15 = load i32, i32* @VENUS_DEC_STATE_STOPPED, align 4
  %16 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %20 = load i32, i32* @HFI_FLUSH_OUTPUT, align 4
  %21 = call i32 @hfi_session_flush(%struct.venus_inst* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %23 = call i32 @vdec_cancel_dst_buffers(%struct.venus_inst* %22)
  %24 = load i32, i32* @VENUS_DEC_STATE_CAPTURE_SETUP, align 4
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %28 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %31 = call i32 @venus_helper_free_dpb_bufs(%struct.venus_inst* %30)
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

33:                                               ; preds = %18, %12
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @hfi_session_flush(%struct.venus_inst*, i32) #1

declare dso_local i32 @vdec_cancel_dst_buffers(%struct.venus_inst*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @venus_helper_free_dpb_bufs(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
