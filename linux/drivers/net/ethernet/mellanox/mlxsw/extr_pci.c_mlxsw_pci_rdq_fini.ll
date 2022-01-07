; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32 }
%struct.mlxsw_pci_queue_elem_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*)* @mlxsw_pci_rdq_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_rdq_fini(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_queue* %1) #0 {
  %3 = alloca %struct.mlxsw_pci*, align 8
  %4 = alloca %struct.mlxsw_pci_queue*, align 8
  %5 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %3, align 8
  store %struct.mlxsw_pci_queue* %1, %struct.mlxsw_pci_queue** %4, align 8
  %7 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlxsw_cmd_hw2sw_rdq(i32 %9, i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue* %21, i32 %22)
  store %struct.mlxsw_pci_queue_elem_info* %23, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %24 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %25 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %26 = call i32 @mlxsw_pci_rdq_skb_free(%struct.mlxsw_pci* %24, %struct.mlxsw_pci_queue_elem_info* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %14

30:                                               ; preds = %14
  ret void
}

declare dso_local i32 @mlxsw_cmd_hw2sw_rdq(i32, i32) #1

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_get(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @mlxsw_pci_rdq_skb_free(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue_elem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
