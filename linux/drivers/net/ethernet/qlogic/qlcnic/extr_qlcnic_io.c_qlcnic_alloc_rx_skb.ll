; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32, i32 }
%struct.qlcnic_rx_buffer = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, %struct.qlcnic_rx_buffer*)* @qlcnic_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_alloc_rx_skb(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_rds_ring* %1, %struct.qlcnic_rx_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %7 = alloca %struct.qlcnic_rx_buffer*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_host_rds_ring* %1, %struct.qlcnic_host_rds_ring** %6, align 8
  store %struct.qlcnic_rx_buffer* %2, %struct.qlcnic_rx_buffer** %7, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sk_buff* @netdev_alloc_skb(i32 %16, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @NET_IP_ALIGN, align 4
  %34 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %6, align 8
  %40 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %43 = call i32 @pci_map_single(%struct.pci_dev* %35, i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %31
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %31
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %60, i32 0, i32 1
  store %struct.sk_buff* %59, %struct.sk_buff** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %48, %23
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
