; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_skb_transmit_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_skb_transmit_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_tx_info = type { i32 }
%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxsw_tx_info*)* @mlxsw_pci_skb_transmit_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_skb_transmit_busy(i8* %0, %struct.mlxsw_tx_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlxsw_tx_info*, align 8
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca %struct.mlxsw_pci_queue*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlxsw_tx_info* %1, %struct.mlxsw_tx_info** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mlxsw_pci*
  store %struct.mlxsw_pci* %8, %struct.mlxsw_pci** %5, align 8
  %9 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %10 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %4, align 8
  %11 = call %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_pick(%struct.mlxsw_pci* %9, %struct.mlxsw_tx_info* %10)
  store %struct.mlxsw_pci_queue* %11, %struct.mlxsw_pci_queue** %6, align 8
  %12 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %6, align 8
  %13 = call i32 @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.mlxsw_pci_queue* @mlxsw_pci_sdq_pick(%struct.mlxsw_pci*, %struct.mlxsw_tx_info*) #1

declare dso_local i32 @mlxsw_pci_queue_elem_info_producer_get(%struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
