; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pasemi_mac = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@RX_RING_SIZE = common dso_local global i64 0, align 8
@PE_DEF_MTU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAS_MAC_CFG_MACCFG = common dso_local global i32 0, align 4
@PAS_MAC_CFG_MACCFG_MAXF_M = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@LOCAL_SKB_ALIGN = common dso_local global i64 0, align 8
@PAS_DMA_RXINT_RCMDSTA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pasemi_mac_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pasemi_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.pasemi_mac* @netdev_priv(%struct.net_device* %10)
  store %struct.pasemi_mac* %11, %struct.pasemi_mac** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %18 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %17, i32 0, i32 0
  %19 = call i32 @napi_disable(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_tx_disable(%struct.net_device* %20)
  %22 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %23 = call i32 @pasemi_mac_intf_disable(%struct.pasemi_mac* %22)
  %24 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %25 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %26)
  %28 = call i32 @read_dma_reg(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %30 = call i32 @pasemi_mac_pause_rxint(%struct.pasemi_mac* %29)
  %31 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %32 = call %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac* %31)
  %33 = load i64, i64* @RX_RING_SIZE, align 8
  %34 = call i32 @pasemi_mac_clean_rx(%struct.TYPE_3__* %32, i64 %33)
  %35 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %36 = call i32 @pasemi_mac_free_rx_buffers(%struct.pasemi_mac* %35)
  br label %37

37:                                               ; preds = %16, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PE_DEF_MTU, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %43 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %48 = call i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac* %47)
  %49 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %50 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %91

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41, %37
  %58 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %59 = load i32, i32* @PAS_MAC_CFG_MACCFG, align 4
  %60 = call i32 @read_mac_reg(%struct.pasemi_mac* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @PAS_MAC_CFG_MACCFG_MAXF_M, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @ETH_HLEN, align 8
  %68 = add nsw i64 %66, %67
  %69 = add nsw i64 %68, 4
  %70 = call i32 @PAS_MAC_CFG_MACCFG_MAXF(i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %74 = load i32, i32* @PAS_MAC_CFG_MACCFG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @write_mac_reg(%struct.pasemi_mac* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @ETH_HLEN, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @ETH_FCS_LEN, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* @LOCAL_SKB_ALIGN, align 8
  %87 = add nsw i64 %85, %86
  %88 = add nsw i64 %87, 128
  %89 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %90 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %57, %53
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %96 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_EN, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @write_dma_reg(i32 %98, i32 %101)
  %103 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %104 = call %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac* %103)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load i64, i64* @RX_RING_SIZE, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @pasemi_mac_replenish_rx_ring(%struct.net_device* %106, i64 %108)
  %110 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %111 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %110, i32 0, i32 0
  %112 = call i32 @napi_enable(i32* %111)
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = call i32 @netif_start_queue(%struct.net_device* %113)
  %115 = load %struct.pasemi_mac*, %struct.pasemi_mac** %5, align 8
  %116 = call i32 @pasemi_mac_intf_enable(%struct.pasemi_mac* %115)
  br label %117

117:                                              ; preds = %94, %91
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local %struct.pasemi_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_intf_disable(%struct.pasemi_mac*) #1

declare dso_local i32 @read_dma_reg(i32) #1

declare dso_local i32 @PAS_DMA_RXINT_RCMDSTA(i32) #1

declare dso_local i32 @pasemi_mac_pause_rxint(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_clean_rx(%struct.TYPE_3__*, i64) #1

declare dso_local %struct.TYPE_3__* @rx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_free_rx_buffers(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac*) #1

declare dso_local i32 @read_mac_reg(%struct.pasemi_mac*, i32) #1

declare dso_local i32 @PAS_MAC_CFG_MACCFG_MAXF(i64) #1

declare dso_local i32 @write_mac_reg(%struct.pasemi_mac*, i32, i32) #1

declare dso_local i32 @write_dma_reg(i32, i32) #1

declare dso_local i32 @pasemi_mac_replenish_rx_ring(%struct.net_device*, i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_intf_enable(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
