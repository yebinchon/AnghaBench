; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_notify_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_notify_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_event_qp = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.vmci_handle }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_EVENT_HANDLER = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i64 0, align 8
@VMCI_CONTEXT_RESOURCE_ID = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_ATTACH = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_DETACH = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Failed to enqueue queue_pair %s event datagram for context (ID=0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @qp_notify_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_notify_peer(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_handle, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmci_event_qp, align 8
  %12 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store i32 %0, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @vmci_handle_is_invalid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @VMCI_INVALID_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @VMCI_INVALID_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %4
  %26 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @VMCI_EVENT_HANDLER, align 4
  %30 = call i8* @vmci_make_handle(i64 %28, i32 %29)
  %31 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i64, i64* @VMCI_HYPERVISOR_CONTEXT_ID, align 8
  %35 = load i32, i32* @VMCI_CONTEXT_RESOURCE_ID, align 4
  %36 = call i8* @vmci_make_handle(i64 %34, i32 %35)
  %37 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 24, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @VMCI_EVENT_QP_PEER_ATTACH, align 4
  br label %49

47:                                               ; preds = %27
  %48 = load i32, i32* @VMCI_EVENT_QP_PEER_DETACH, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = bitcast %struct.vmci_handle* %55 to i8*
  %57 = bitcast %struct.vmci_handle* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @VMCI_HYPERVISOR_CONTEXT_ID, align 8
  %62 = getelementptr inbounds %struct.vmci_event_qp, %struct.vmci_event_qp* %11, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @vmci_datagram_dispatch(i64 %61, %struct.TYPE_8__* %63, i32 0)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @VMCI_SUCCESS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %49
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local i8* @vmci_make_handle(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_datagram_dispatch(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
