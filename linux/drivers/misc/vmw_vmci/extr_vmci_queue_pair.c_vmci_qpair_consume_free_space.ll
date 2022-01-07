; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_consume_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_consume_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32 }
%struct.vmci_queue_header = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmci_qpair_consume_free_space(%struct.vmci_qp* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmci_qp*, align 8
  %4 = alloca %struct.vmci_queue_header*, align 8
  %5 = alloca %struct.vmci_queue_header*, align 8
  %6 = alloca i64, align 8
  store %struct.vmci_qp* %0, %struct.vmci_qp** %3, align 8
  %7 = load %struct.vmci_qp*, %struct.vmci_qp** %3, align 8
  %8 = icmp ne %struct.vmci_qp* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @VMCI_ERROR_INVALID_ARGS, align 8
  store i64 %10, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.vmci_qp*, %struct.vmci_qp** %3, align 8
  %13 = call i32 @qp_lock(%struct.vmci_qp* %12)
  %14 = load %struct.vmci_qp*, %struct.vmci_qp** %3, align 8
  %15 = call i64 @qp_get_queue_headers(%struct.vmci_qp* %14, %struct.vmci_queue_header** %4, %struct.vmci_queue_header** %5)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @VMCI_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %5, align 8
  %21 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %4, align 8
  %22 = load %struct.vmci_qp*, %struct.vmci_qp** %3, align 8
  %23 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @vmci_q_header_free_space(%struct.vmci_queue_header* %20, %struct.vmci_queue_header* %21, i32 %24)
  store i64 %25, i64* %6, align 8
  br label %27

26:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.vmci_qp*, %struct.vmci_qp** %3, align 8
  %29 = call i32 @qp_unlock(%struct.vmci_qp* %28)
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %27, %9
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @qp_lock(%struct.vmci_qp*) #1

declare dso_local i64 @qp_get_queue_headers(%struct.vmci_qp*, %struct.vmci_queue_header**, %struct.vmci_queue_header**) #1

declare dso_local i64 @vmci_q_header_free_space(%struct.vmci_queue_header*, %struct.vmci_queue_header*, i32) #1

declare dso_local i32 @qp_unlock(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
