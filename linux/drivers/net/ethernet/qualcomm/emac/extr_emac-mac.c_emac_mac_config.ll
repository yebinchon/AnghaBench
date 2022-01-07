; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@EMAC_DEF_RX_BUF_SIZE = common dso_local global i32 0, align 4
@EMAC_MAX_FRAM_LEN_CTRL = common dso_local global i64 0, align 8
@EMAC_AXI_MAST_CTRL = common dso_local global i64 0, align 8
@DATA_BYTE_SWAP = common dso_local global i32 0, align 4
@MAX_BOUND = common dso_local global i32 0, align 4
@MAX_BTYPE = common dso_local global i32 0, align 4
@EMAC_CLK_GATE_CTRL = common dso_local global i64 0, align 8
@RX_UNCPL_INT_EN = common dso_local global i32 0, align 4
@EMAC_MISC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_config(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @emac_set_mac_address(%struct.emac_adapter* %9, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_HLEN, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @ETH_FCS_LEN, align 4
  %20 = add i32 %18, %19
  %21 = load i32, i32* @VLAN_HLEN, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EMAC_DEF_RX_BUF_SIZE, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ALIGN(i32 %29, i32 8)
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @EMAC_DEF_RX_BUF_SIZE, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %38 = call i32 @emac_mac_dma_rings_config(%struct.emac_adapter* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_HLEN, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* @VLAN_HLEN, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* @ETH_FCS_LEN, align 4
  %47 = add i32 %45, %46
  %48 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EMAC_MAX_FRAM_LEN_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %55 = call i32 @emac_mac_tx_config(%struct.emac_adapter* %54)
  %56 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %57 = call i32 @emac_mac_rx_config(%struct.emac_adapter* %56)
  %58 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %59 = call i32 @emac_mac_dma_config(%struct.emac_adapter* %58)
  %60 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EMAC_AXI_MAST_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @DATA_BYTE_SWAP, align 4
  %67 = load i32, i32* @MAX_BOUND, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @MAX_BTYPE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EMAC_AXI_MAST_CTRL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EMAC_CLK_GATE_CTRL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 0, i64 %86)
  %88 = load i32, i32* @RX_UNCPL_INT_EN, align 4
  %89 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EMAC_MISC_CTRL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  ret void
}

declare dso_local i32 @emac_set_mac_address(%struct.emac_adapter*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @emac_mac_dma_rings_config(%struct.emac_adapter*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @emac_mac_tx_config(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_rx_config(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_dma_config(%struct.emac_adapter*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
