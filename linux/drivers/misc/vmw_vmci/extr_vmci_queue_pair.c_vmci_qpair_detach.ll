; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qpair_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32, i32, i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qpair_detach(%struct.vmci_qp** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_qp**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_qp*, align 8
  store %struct.vmci_qp** %0, %struct.vmci_qp*** %3, align 8
  %6 = load %struct.vmci_qp**, %struct.vmci_qp*** %3, align 8
  %7 = icmp ne %struct.vmci_qp** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.vmci_qp**, %struct.vmci_qp*** %3, align 8
  %10 = load %struct.vmci_qp*, %struct.vmci_qp** %9, align 8
  %11 = icmp ne %struct.vmci_qp* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.vmci_qp**, %struct.vmci_qp*** %3, align 8
  %16 = load %struct.vmci_qp*, %struct.vmci_qp** %15, align 8
  store %struct.vmci_qp* %16, %struct.vmci_qp** %5, align 8
  %17 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %18 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %21 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qp_detatch(i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %25 = call i32 @memset(%struct.vmci_qp* %24, i32 0, i32 12)
  %26 = load i32, i32* @VMCI_INVALID_HANDLE, align 4
  %27 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %28 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @VMCI_INVALID_ID, align 4
  %30 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %31 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vmci_qp*, %struct.vmci_qp** %5, align 8
  %33 = call i32 @kfree(%struct.vmci_qp* %32)
  %34 = load %struct.vmci_qp**, %struct.vmci_qp*** %3, align 8
  store %struct.vmci_qp* null, %struct.vmci_qp** %34, align 8
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @qp_detatch(i32, i32) #1

declare dso_local i32 @memset(%struct.vmci_qp*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
