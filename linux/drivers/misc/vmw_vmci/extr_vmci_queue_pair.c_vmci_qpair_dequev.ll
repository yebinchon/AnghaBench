; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_dequev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_dequev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32, i32, i32 }
%struct.msghdr = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i64 0, align 8
@VMCI_ERROR_QUEUEPAIR_NOT_READY = common dso_local global i64 0, align 8
@VMCI_ERROR_WOULD_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmci_qpair_dequev(%struct.vmci_qp* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmci_qp*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vmci_qp* %0, %struct.vmci_qp** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %12 = icmp ne %struct.vmci_qp* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @VMCI_ERROR_INVALID_ARGS, align 8
  store i64 %14, i64* %5, align 8
  br label %49

15:                                               ; preds = %4
  %16 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %17 = call i32 @qp_lock(%struct.vmci_qp* %16)
  br label %18

18:                                               ; preds = %41, %15
  %19 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %20 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %23 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %26 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 0
  %30 = call i64 @qp_dequeue_locked(i32 %21, i32 %24, i32 %27, i32* %29, i32 1)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @VMCI_ERROR_QUEUEPAIR_NOT_READY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %36 = call i32 @qp_wait_for_ready_queue(%struct.vmci_qp* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @VMCI_ERROR_WOULD_BLOCK, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %38, %34, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @VMCI_ERROR_QUEUEPAIR_NOT_READY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %18, label %45

45:                                               ; preds = %41
  %46 = load %struct.vmci_qp*, %struct.vmci_qp** %6, align 8
  %47 = call i32 @qp_unlock(%struct.vmci_qp* %46)
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %13
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i32 @qp_lock(%struct.vmci_qp*) #1

declare dso_local i64 @qp_dequeue_locked(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @qp_wait_for_ready_queue(%struct.vmci_qp*) #1

declare dso_local i32 @qp_unlock(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
