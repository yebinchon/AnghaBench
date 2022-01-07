; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_guest_endpoints_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_guest_endpoints_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.qp_entry = type { i32, i64, i32 }
%struct.qp_guest_endpoint = type { i32 }

@qp_guest_endpoints = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmci_qp_guest_endpoints_exit() #0 {
  %1 = alloca %struct.qp_entry*, align 8
  %2 = alloca %struct.qp_guest_endpoint*, align 8
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  br label %4

4:                                                ; preds = %21, %0
  %5 = call %struct.qp_entry* @qp_list_get_head(%struct.TYPE_4__* @qp_guest_endpoints)
  store %struct.qp_entry* %5, %struct.qp_entry** %1, align 8
  %6 = icmp ne %struct.qp_entry* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load %struct.qp_entry*, %struct.qp_entry** %1, align 8
  %9 = bitcast %struct.qp_entry* %8 to %struct.qp_guest_endpoint*
  store %struct.qp_guest_endpoint* %9, %struct.qp_guest_endpoint** %2, align 8
  %10 = load %struct.qp_entry*, %struct.qp_entry** %1, align 8
  %11 = getelementptr inbounds %struct.qp_entry, %struct.qp_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = load %struct.qp_entry*, %struct.qp_entry** %1, align 8
  %18 = getelementptr inbounds %struct.qp_entry, %struct.qp_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @qp_detatch_hypercall(i32 %19)
  br label %21

21:                                               ; preds = %16, %7
  %22 = load %struct.qp_entry*, %struct.qp_entry** %1, align 8
  %23 = getelementptr inbounds %struct.qp_entry, %struct.qp_entry* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.qp_entry*, %struct.qp_entry** %1, align 8
  %25 = call i32 @qp_list_remove_entry(%struct.TYPE_4__* @qp_guest_endpoints, %struct.qp_entry* %24)
  %26 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %2, align 8
  %27 = call i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint* %26)
  br label %4

28:                                               ; preds = %4
  %29 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.qp_entry* @qp_list_get_head(%struct.TYPE_4__*) #1

declare dso_local i32 @qp_detatch_hypercall(i32) #1

declare dso_local i32 @qp_list_remove_entry(%struct.TYPE_4__*, %struct.qp_entry*) #1

declare dso_local i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
