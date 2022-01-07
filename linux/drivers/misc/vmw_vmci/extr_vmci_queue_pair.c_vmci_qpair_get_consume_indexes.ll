; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_get_consume_indexes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_get_consume_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i64 }
%struct.vmci_queue_header = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qpair_get_consume_indexes(%struct.vmci_qp* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_qp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vmci_queue_header*, align 8
  %9 = alloca %struct.vmci_queue_header*, align 8
  %10 = alloca i32, align 4
  store %struct.vmci_qp* %0, %struct.vmci_qp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %12 = icmp ne %struct.vmci_qp* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %14, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %17 = call i32 @qp_lock(%struct.vmci_qp* %16)
  %18 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %19 = call i32 @qp_get_queue_headers(%struct.vmci_qp* %18, %struct.vmci_queue_header** %8, %struct.vmci_queue_header** %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @VMCI_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %9, align 8
  %25 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %8, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @vmci_q_header_get_pointers(%struct.vmci_queue_header* %24, %struct.vmci_queue_header* %25, i64* %26, i64* %27)
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %31 = call i32 @qp_unlock(%struct.vmci_qp* %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @VMCI_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %42 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %38, %35
  %46 = load i64*, i64** %7, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %52 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %38
  %56 = load i32, i32* @VMCI_ERROR_INVALID_SIZE, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %48, %45, %29
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %55, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @qp_lock(%struct.vmci_qp*) #1

declare dso_local i32 @qp_get_queue_headers(%struct.vmci_qp*, %struct.vmci_queue_header**, %struct.vmci_queue_header**) #1

declare dso_local i32 @vmci_q_header_get_pointers(%struct.vmci_queue_header*, %struct.vmci_queue_header*, i64*, i64*) #1

declare dso_local i32 @qp_unlock(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
