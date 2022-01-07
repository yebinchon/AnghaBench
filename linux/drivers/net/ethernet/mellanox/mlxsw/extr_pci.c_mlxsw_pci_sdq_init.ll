; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_sdq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_sdq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i64, i64 }

@MLXSW_PCI_AQ_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_sdq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_sdq_init(%struct.mlxsw_pci* %0, i8* %1, %struct.mlxsw_pci_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_pci_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_pci_queue* %2, %struct.mlxsw_pci_queue** %7, align 8
  %11 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_cq_set(i8* %15, i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_sdq_tclass_set(i8* %20, i32 3)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(i8* %22, i32 3)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %36, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MLXSW_PCI_AQ_PAGES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mlxsw_cmd_mbox_sw2hw_dq_pa_set(i8* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlxsw_cmd_sw2hw_sdq(i32 %42, i8* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %54 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %55 = call i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci* %53, %struct.mlxsw_pci_queue* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %50
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_cq_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_sdq_tclass_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_log2_dq_sz_set(i8*, i32) #1

declare dso_local i32 @__mlxsw_pci_queue_page_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_sw2hw_dq_pa_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_sw2hw_sdq(i32, i8*, i32) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
