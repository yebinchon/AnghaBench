; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_allocate_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_allocate_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dmfe_board_info = type { i64, %struct.rx_desc*, i32 }
%struct.rx_desc = type { %struct.rx_desc*, i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_DESC_CNT = common dso_local global i64 0, align 8
@RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @allocate_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_rx_buffer(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dmfe_board_info*, align 8
  %4 = alloca %struct.rx_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.dmfe_board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.dmfe_board_info* %7, %struct.dmfe_board_info** %3, align 8
  %8 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %9 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %8, i32 0, i32 1
  %10 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  store %struct.rx_desc* %10, %struct.rx_desc** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %13 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RX_DESC_CNT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %20 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %50

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %26 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %25, i32 0, i32 3
  store %struct.sk_buff* %24, %struct.sk_buff** %26, align 8
  %27 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %28 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %34 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %35 = call i32 @pci_map_single(i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %38 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i32 (...) @wmb()
  %40 = call i8* @cpu_to_le32(i32 -2147483648)
  %41 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %42 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %44 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %43, i32 0, i32 0
  %45 = load %struct.rx_desc*, %struct.rx_desc** %44, align 8
  store %struct.rx_desc* %45, %struct.rx_desc** %4, align 8
  %46 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %47 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %11

50:                                               ; preds = %22, %11
  %51 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %52 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %53 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %52, i32 0, i32 1
  store %struct.rx_desc* %51, %struct.rx_desc** %53, align 8
  ret void
}

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
