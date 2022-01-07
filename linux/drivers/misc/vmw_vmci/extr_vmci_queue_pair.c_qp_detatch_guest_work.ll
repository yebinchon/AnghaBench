; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch_guest_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch_guest_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vmci_handle = type { i32 }
%struct.qp_guest_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@qp_guest_endpoints = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qp_detatch_guest_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_detatch_guest_work(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qp_guest_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  %8 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  %9 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qp_guest_endpoint* @qp_guest_handle_to_entry(i32 %10)
  store %struct.qp_guest_endpoint* %11, %struct.qp_guest_endpoint** %5, align 8
  %12 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %13 = icmp ne %struct.qp_guest_endpoint* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  %16 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %19 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %28 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qp_notify_peer_local(i32 0, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %48

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qp_detatch_hypercall(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @VMCI_SUCCESS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %80

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %50 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %55 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %61 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %60, i32 0, i32 0
  %62 = call i32 @qp_list_remove_entry(%struct.TYPE_4__* @qp_guest_endpoints, %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %65 = icmp ne %struct.qp_guest_endpoint* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %68 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qp_guest_endpoints, i32 0, i32 0))
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %5, align 8
  %77 = call i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %44, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.qp_guest_endpoint* @qp_guest_handle_to_entry(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qp_notify_peer_local(i32, i32) #1

declare dso_local i32 @qp_detatch_hypercall(i32) #1

declare dso_local i32 @qp_list_remove_entry(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
