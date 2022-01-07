; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_pre_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i64, i64 }
%struct.mlxsw_pci_queue = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MLXSW_PCI_CQE_V2 = common dso_local global i64 0, align 8
@MLXSW_PCI_CQE_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_cq_pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_cq_pre_init(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_queue* %1) #0 {
  %3 = alloca %struct.mlxsw_pci*, align 8
  %4 = alloca %struct.mlxsw_pci_queue*, align 8
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %3, align 8
  store %struct.mlxsw_pci_queue* %1, %struct.mlxsw_pci_queue** %4, align 8
  %5 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 %7, i64* %11, align 8
  %12 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLXSW_PCI_CQE_V2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i64, i64* @MLXSW_PCI_CQE_V1, align 8
  %29 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
