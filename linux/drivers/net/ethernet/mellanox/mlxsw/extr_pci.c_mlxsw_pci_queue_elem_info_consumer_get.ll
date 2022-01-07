; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_queue_elem_info_consumer_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_queue_elem_info_consumer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue_elem_info = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_pci_queue_elem_info* (%struct.mlxsw_pci_queue*)* @mlxsw_pci_queue_elem_info_consumer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue* %0) #0 {
  %2 = alloca %struct.mlxsw_pci_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_pci_queue* %0, %struct.mlxsw_pci_queue** %2, align 8
  %4 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %6, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue* %12, i32 %13)
  ret %struct.mlxsw_pci_queue_elem_info* %14
}

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
