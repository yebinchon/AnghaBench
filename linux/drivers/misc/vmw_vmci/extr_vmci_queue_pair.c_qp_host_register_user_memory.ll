; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_register_user_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_register_user_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp_page_store = type { i64 }
%struct.vmci_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_qp_page_store*, %struct.vmci_queue*, %struct.vmci_queue*)* @qp_host_register_user_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_host_register_user_memory(%struct.vmci_qp_page_store* %0, %struct.vmci_queue* %1, %struct.vmci_queue* %2) #0 {
  %4 = alloca %struct.vmci_qp_page_store*, align 8
  %5 = alloca %struct.vmci_queue*, align 8
  %6 = alloca %struct.vmci_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vmci_qp_page_store* %0, %struct.vmci_qp_page_store** %4, align 8
  store %struct.vmci_queue* %1, %struct.vmci_queue** %5, align 8
  store %struct.vmci_queue* %2, %struct.vmci_queue** %6, align 8
  %9 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %4, align 8
  %10 = getelementptr inbounds %struct.vmci_qp_page_store, %struct.vmci_qp_page_store* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.vmci_qp_page_store*, %struct.vmci_qp_page_store** %4, align 8
  %13 = getelementptr inbounds %struct.vmci_qp_page_store, %struct.vmci_qp_page_store* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %16 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %14, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %27 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %28 = call i32 @qp_host_get_user_memory(i64 %24, i64 %25, %struct.vmci_queue* %26, %struct.vmci_queue* %27)
  ret i32 %28
}

declare dso_local i32 @qp_host_get_user_memory(i64, i64, %struct.vmci_queue*, %struct.vmci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
