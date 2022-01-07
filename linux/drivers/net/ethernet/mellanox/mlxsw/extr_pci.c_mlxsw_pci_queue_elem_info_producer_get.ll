; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_queue_elem_info_producer_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_queue_elem_info_producer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue_elem_info = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_pci_queue_elem_info* (%struct.mlxsw_pci_queue*)* @mlxsw_pci_queue_elem_info_producer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue* %0) #0 {
  %2 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %3 = alloca %struct.mlxsw_pci_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_pci_queue* %0, %struct.mlxsw_pci_queue** %3, align 8
  %5 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %7, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.mlxsw_pci_queue_elem_info* null, %struct.mlxsw_pci_queue_elem_info** %2, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue* %26, i32 %27)
  store %struct.mlxsw_pci_queue_elem_info* %28, %struct.mlxsw_pci_queue_elem_info** %2, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %2, align 8
  ret %struct.mlxsw_pci_queue_elem_info* %30
}

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
