; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch_hypercall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_qp_detach_msg = type { %struct.TYPE_2__, %struct.vmci_handle }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_QUEUEPAIR_DETACH = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qp_detatch_hypercall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_detatch_hypercall(i32 %0) #0 {
  %2 = alloca %struct.vmci_handle, align 4
  %3 = alloca %struct.vmci_qp_detach_msg, align 4
  %4 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %6 = load i32, i32* @VMCI_QUEUEPAIR_DETACH, align 4
  %7 = call i32 @vmci_make_handle(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.vmci_qp_detach_msg, %struct.vmci_qp_detach_msg* %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %11 = getelementptr inbounds %struct.vmci_qp_detach_msg, %struct.vmci_qp_detach_msg* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %struct.vmci_qp_detach_msg, %struct.vmci_qp_detach_msg* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.vmci_qp_detach_msg, %struct.vmci_qp_detach_msg* %3, i32 0, i32 1
  %16 = bitcast %struct.vmci_handle* %15 to i8*
  %17 = bitcast %struct.vmci_handle* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.vmci_qp_detach_msg, %struct.vmci_qp_detach_msg* %3, i32 0, i32 0
  %19 = call i32 @vmci_send_datagram(%struct.TYPE_2__* %18)
  ret i32 %19
}

declare dso_local i32 @vmci_make_handle(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_send_datagram(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
