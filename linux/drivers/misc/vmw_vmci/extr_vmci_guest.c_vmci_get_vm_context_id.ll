; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_get_vm_context_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_get_vm_context_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_datagram = type { i64, i32, i32 }

@vm_context_id = common dso_local global i64 0, align 8
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_GET_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmci_get_vm_context_id() #0 {
  %1 = alloca %struct.vmci_datagram, align 8
  %2 = load i64, i64* @vm_context_id, align 8
  %3 = load i64, i64* @VMCI_INVALID_ID, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %7 = load i32, i32* @VMCI_GET_CONTEXT_ID, align 4
  %8 = call i32 @vmci_make_handle(i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %11 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %1, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %1, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = call i64 @vmci_send_datagram(%struct.vmci_datagram* %1)
  store i64 %13, i64* @vm_context_id, align 8
  br label %14

14:                                               ; preds = %5, %0
  %15 = load i64, i64* @vm_context_id, align 8
  ret i64 %15
}

declare dso_local i32 @vmci_make_handle(i32, i32) #1

declare dso_local i64 @vmci_send_datagram(%struct.vmci_datagram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
