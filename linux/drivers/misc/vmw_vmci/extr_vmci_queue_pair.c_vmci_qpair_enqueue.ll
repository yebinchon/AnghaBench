; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.kvec = type { i8*, i64 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@VMCI_ERROR_QUEUEPAIR_NOT_READY = common dso_local global i64 0, align 8
@VMCI_ERROR_WOULD_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmci_qpair_enqueue(%struct.vmci_qp* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmci_qp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iov_iter, align 4
  %12 = alloca %struct.kvec, align 8
  store %struct.vmci_qp* %0, %struct.vmci_qp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 1
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %18 = icmp ne %struct.vmci_qp* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @VMCI_ERROR_INVALID_ARGS, align 8
  store i64 %23, i64* %5, align 8
  br label %59

24:                                               ; preds = %19
  %25 = load i32, i32* @WRITE, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @iov_iter_kvec(%struct.iov_iter* %11, i32 %25, %struct.kvec* %12, i32 1, i64 %26)
  %28 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %29 = call i32 @qp_lock(%struct.vmci_qp* %28)
  br label %30

30:                                               ; preds = %51, %24
  %31 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %32 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %35 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %38 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @qp_enqueue_locked(i32 %33, i32 %36, i32 %39, %struct.iov_iter* %11)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @VMCI_ERROR_QUEUEPAIR_NOT_READY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %46 = call i32 @qp_wait_for_ready_queue(%struct.vmci_qp* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @VMCI_ERROR_WOULD_BLOCK, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %44, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @VMCI_ERROR_QUEUEPAIR_NOT_READY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %30, label %55

55:                                               ; preds = %51
  %56 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %57 = call i32 @qp_unlock(%struct.vmci_qp* %56)
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %55, %22
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @qp_lock(%struct.vmci_qp*) #1

declare dso_local i64 @qp_enqueue_locked(i32, i32, i32, %struct.iov_iter*) #1

declare dso_local i32 @qp_wait_for_ready_queue(%struct.vmci_qp*) #1

declare dso_local i32 @qp_unlock(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
