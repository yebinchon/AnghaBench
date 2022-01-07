; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c___mlxsw_pci_queue_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c___mlxsw_pci_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue = type { i32 }
%struct.mlxsw_pci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_pci_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_pci_queue* (%struct.mlxsw_pci*, i32, i64)* @__mlxsw_pci_queue_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_pci_queue* @__mlxsw_pci_queue_get(%struct.mlxsw_pci* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %14, i64 %15
  ret %struct.mlxsw_pci_queue* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
