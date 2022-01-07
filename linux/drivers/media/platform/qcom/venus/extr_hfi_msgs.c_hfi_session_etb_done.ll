; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_session_etb_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_session_etb_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_inst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.venus_inst*, i32, i32, i32, i32, i32, i32, i32)* }
%struct.hfi_msg_session_empty_buffer_done_pkt = type { i32, i32, i32, i32 }

@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, i8*)* @hfi_session_etb_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi_session_etb_done(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_msg_session_empty_buffer_done_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.hfi_msg_session_empty_buffer_done_pkt*
  store %struct.hfi_msg_session_empty_buffer_done_pkt* %9, %struct.hfi_msg_session_empty_buffer_done_pkt** %7, align 8
  %10 = load %struct.hfi_msg_session_empty_buffer_done_pkt*, %struct.hfi_msg_session_empty_buffer_done_pkt** %7, align 8
  %11 = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, %struct.hfi_msg_session_empty_buffer_done_pkt* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %16 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.venus_inst*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.venus_inst*, i32, i32, i32, i32, i32, i32, i32)** %18, align 8
  %20 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %21 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %22 = load %struct.hfi_msg_session_empty_buffer_done_pkt*, %struct.hfi_msg_session_empty_buffer_done_pkt** %7, align 8
  %23 = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, %struct.hfi_msg_session_empty_buffer_done_pkt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hfi_msg_session_empty_buffer_done_pkt*, %struct.hfi_msg_session_empty_buffer_done_pkt** %7, align 8
  %26 = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, %struct.hfi_msg_session_empty_buffer_done_pkt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hfi_msg_session_empty_buffer_done_pkt*, %struct.hfi_msg_session_empty_buffer_done_pkt** %7, align 8
  %29 = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, %struct.hfi_msg_session_empty_buffer_done_pkt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %19(%struct.venus_inst* %20, i32 %21, i32 %24, i32 %27, i32 %30, i32 0, i32 0, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
