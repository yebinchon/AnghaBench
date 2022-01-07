; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_skb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_rdq_skb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MLXSW_PORT_MAX_MTU = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, %struct.mlxsw_pci_queue_elem_info*)* @mlxsw_pci_rdq_skb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_rdq_skb_alloc(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_queue_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %4, align 8
  store %struct.mlxsw_pci_queue_elem_info* %1, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %10 = load i64, i64* @MLXSW_PORT_MAX_MTU, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i64 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci* %26, i8* %27, i32 0, i32 %30, i64 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.sk_buff* %38, %struct.sk_buff** %42, align 8
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %37, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i64) #1

declare dso_local i32 @mlxsw_pci_wqe_frag_map(%struct.mlxsw_pci*, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
