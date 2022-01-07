; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_map_queue_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_map_queue_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { i64, i32* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_ERROR_QUEUEPAIR_NOT_READY = common dso_local global i32 0, align 4
@VMCI_ERROR_QUEUEPAIR_NOTATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_queue*, %struct.vmci_queue*)* @qp_map_queue_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_map_queue_headers(%struct.vmci_queue* %0, %struct.vmci_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_queue*, align 8
  %5 = alloca %struct.vmci_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.vmci_queue* %0, %struct.vmci_queue** %4, align 8
  store %struct.vmci_queue* %1, %struct.vmci_queue** %5, align 8
  %7 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %8 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* null, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %13 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* null, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %11, %2
  %17 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %18 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %19 = call i32 @qp_host_map_queues(%struct.vmci_queue* %17, %struct.vmci_queue* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VMCI_SUCCESS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %30 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_NOT_READY, align 4
  br label %37

35:                                               ; preds = %28, %23
  %36 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_NOTATTACHED, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @qp_host_map_queues(%struct.vmci_queue*, %struct.vmci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
