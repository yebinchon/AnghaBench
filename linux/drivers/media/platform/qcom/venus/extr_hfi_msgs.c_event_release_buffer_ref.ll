; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_release_buffer_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_release_buffer_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_inst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)* }
%struct.hfi_event_data = type { i32, i32, i32, i32, i32 }
%struct.hfi_msg_event_notify_pkt = type { i64 }
%struct.hfi_msg_event_release_buffer_ref_pkt = type { i32, i32, i32 }

@HFI_EVENT_RELEASE_BUFFER_REFERENCE = common dso_local global i32 0, align 4
@HFI_ERR_NONE = common dso_local global i32 0, align 4
@EVT_SYS_EVENT_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*)* @event_release_buffer_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_release_buffer_ref(%struct.venus_core* %0, %struct.venus_inst* %1, %struct.hfi_msg_event_notify_pkt* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca %struct.hfi_msg_event_notify_pkt*, align 8
  %7 = alloca %struct.hfi_event_data, align 4
  %8 = alloca %struct.hfi_msg_event_release_buffer_ref_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store %struct.hfi_msg_event_notify_pkt* %2, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %9 = bitcast %struct.hfi_event_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %11 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hfi_msg_event_release_buffer_ref_pkt*
  store %struct.hfi_msg_event_release_buffer_ref_pkt* %13, %struct.hfi_msg_event_release_buffer_ref_pkt** %8, align 8
  %14 = load i32, i32* @HFI_EVENT_RELEASE_BUFFER_REFERENCE, align 4
  %15 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.hfi_msg_event_release_buffer_ref_pkt*, %struct.hfi_msg_event_release_buffer_ref_pkt** %8, align 8
  %17 = getelementptr inbounds %struct.hfi_msg_event_release_buffer_ref_pkt, %struct.hfi_msg_event_release_buffer_ref_pkt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.hfi_msg_event_release_buffer_ref_pkt*, %struct.hfi_msg_event_release_buffer_ref_pkt** %8, align 8
  %21 = getelementptr inbounds %struct.hfi_msg_event_release_buffer_ref_pkt, %struct.hfi_msg_event_release_buffer_ref_pkt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.hfi_msg_event_release_buffer_ref_pkt*, %struct.hfi_msg_event_release_buffer_ref_pkt** %8, align 8
  %25 = getelementptr inbounds %struct.hfi_msg_event_release_buffer_ref_pkt, %struct.hfi_msg_event_release_buffer_ref_pkt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @HFI_ERR_NONE, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %32 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)*, i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)** %34, align 8
  %36 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %37 = load i32, i32* @EVT_SYS_EVENT_CHANGE, align 4
  %38 = call i32 %35(%struct.venus_inst* %36, i32 %37, %struct.hfi_event_data* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
