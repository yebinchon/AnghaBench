; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_hypercall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qp_guest_endpoint = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.vmci_qp_alloc_msg = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_QUEUEPAIR_ALLOC = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qp_guest_endpoint*)* @qp_alloc_hypercall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_alloc_hypercall(%struct.qp_guest_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qp_guest_endpoint*, align 8
  %4 = alloca %struct.vmci_qp_alloc_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qp_guest_endpoint* %0, %struct.qp_guest_endpoint** %3, align 8
  %8 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %9 = icmp ne %struct.qp_guest_endpoint* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %16, i32* %2, align 4
  br label %105

17:                                               ; preds = %10
  %18 = call i64 (...) @vmci_use_ppn64()
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i64 4, i64 4
  store i64 %21, i64* %6, align 8
  %22 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %23 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = mul i64 %25, %26
  %28 = add i64 48, %27
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.vmci_qp_alloc_msg* @kmalloc(i64 %29, i32 %30)
  store %struct.vmci_qp_alloc_msg* %31, %struct.vmci_qp_alloc_msg** %4, align 8
  %32 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %33 = icmp ne %struct.vmci_qp_alloc_msg* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %35, i32* %2, align 4
  br label %105

36:                                               ; preds = %17
  %37 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %38 = load i32, i32* @VMCI_QUEUEPAIR_ALLOC, align 4
  %39 = call i32 @vmci_make_handle(i32 %37, i32 %38)
  %40 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %41 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %44 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %45 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %49 = sub i64 %47, %48
  %50 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %51 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %54 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %58 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %60 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %64 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %66 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %70 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %72 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %76 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %78 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %82 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %84 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %87 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %89 = bitcast %struct.vmci_qp_alloc_msg* %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 48
  %91 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %92 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %91, i32 0, i32 1
  %93 = call i32 @qp_populate_ppn_set(i32* %90, i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @VMCI_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %36
  %98 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %99 = getelementptr inbounds %struct.vmci_qp_alloc_msg, %struct.vmci_qp_alloc_msg* %98, i32 0, i32 1
  %100 = call i32 @vmci_send_datagram(%struct.TYPE_4__* %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %36
  %102 = load %struct.vmci_qp_alloc_msg*, %struct.vmci_qp_alloc_msg** %4, align 8
  %103 = call i32 @kfree(%struct.vmci_qp_alloc_msg* %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %34, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @vmci_use_ppn64(...) #1

declare dso_local %struct.vmci_qp_alloc_msg* @kmalloc(i64, i32) #1

declare dso_local i32 @vmci_make_handle(i32, i32) #1

declare dso_local i32 @qp_populate_ppn_set(i32*, i32*) #1

declare dso_local i32 @vmci_send_datagram(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.vmci_qp_alloc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
