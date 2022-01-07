; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_notify_peer_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_notify_peer_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_event_qp = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.vmci_handle, i32 }

@VMCI_EVENT_HANDLER = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_CONTEXT_RESOURCE_ID = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_ATTACH = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @qp_notify_peer_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_notify_peer_local(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_event_qp, align 8
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i32 %0, i32* %4, align 4
  %8 = call i32 (...) @vmci_get_context_id()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VMCI_EVENT_HANDLER, align 4
  %11 = call i8* @vmci_make_handle(i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %16 = load i32, i32* @VMCI_CONTEXT_RESOURCE_ID, align 4
  %17 = call i8* @vmci_make_handle(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 16, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @VMCI_EVENT_QP_PEER_ATTACH, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @VMCI_EVENT_QP_PEER_DETACH, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = bitcast %struct.vmci_handle* %39 to i8*
  %41 = bitcast %struct.vmci_handle* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @vmci_event_dispatch(%struct.TYPE_8__* %43)
  ret i32 %44
}

declare dso_local i32 @vmci_get_context_id(...) #1

declare dso_local i8* @vmci_make_handle(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_event_dispatch(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
