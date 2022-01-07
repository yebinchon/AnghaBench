; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw, i64 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ixgbevf_ring = type { i32, i32, i64, i64, i64, i32, i64, i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IXGBE_DCA_RXCTRL_DESC_RRO_EN = common dso_local global i32 0, align 4
@ixgbe_mac_82599_vf = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_RLPMLMASK = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_RLPML_EN = common dso_local global i32 0, align 4
@IXGBEVF_MAX_FRAME_BUILD_SKB = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_VME = common dso_local global i32 0, align 4
@IXGBE_DCA_RXCTRL_DATA_WRO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_configure_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_rx_ring(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 0
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @IXGBE_VFRXDCTL(i32 %19)
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %23 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %24 = call i32 @ixgbevf_disable_rx_queue(%struct.ixgbevf_adapter* %22, %struct.ixgbevf_ring* %23)
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @IXGBE_VFRDBAL(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = and i32 %28, %29
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i64 %27, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @IXGBE_VFRDBAH(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 32
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i64 %34, i32 %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @IXGBE_VFRDLEN(i32 %39)
  %41 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i64 %40, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @IXGBE_VFDCA_RXCTRL(i32 %49)
  %51 = load i32, i32* @IXGBE_DCA_RXCTRL_DESC_RRO_EN, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i64 %50, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @IXGBE_VFRDH(i32 %54)
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i64 %55, i32 0)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @IXGBE_VFRDT(i32 %58)
  %60 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i64 %59, i32 0)
  %61 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @IXGBE_VFRDT(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i32 %71, i32 0, i32 %77)
  %79 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %80 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %79, i32 0)
  store %union.ixgbe_adv_rx_desc* %80, %union.ixgbe_adv_rx_desc** %6, align 8
  %81 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %82 = bitcast %union.ixgbe_adv_rx_desc* %81 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %90 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %92 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter* %91, %struct.ixgbevf_ring* %92, i32 %93)
  %95 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ixgbe_mac_82599_vf, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %2
  %103 = load i32, i32* @IXGBE_RXDCTL_RLPMLMASK, align 4
  %104 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %110 = call i64 @ring_uses_build_skb(%struct.ixgbevf_ring* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %114 = call i32 @ring_uses_large_buffer(%struct.ixgbevf_ring* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @IXGBEVF_MAX_FRAME_BUILD_SKB, align 4
  %118 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %112, %102
  br label %123

123:                                              ; preds = %122, %2
  %124 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %125 = load i32, i32* @IXGBE_RXDCTL_VME, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @IXGBE_VFRXDCTL(i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %129, i64 %131, i32 %132)
  %134 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %135 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %136 = call i32 @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter* %134, %struct.ixgbevf_ring* %135)
  %137 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %138 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %139 = call i32 @ixgbevf_desc_unused(%struct.ixgbevf_ring* %138)
  %140 = call i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_ring* %137, i32 %139)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @ixgbevf_disable_rx_queue(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i64 @IXGBE_VFRDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_VFRDBAH(i32) #1

declare dso_local i64 @IXGBE_VFRDLEN(i32) #1

declare dso_local i64 @IXGBE_VFDCA_RXCTRL(i32) #1

declare dso_local i64 @IXGBE_VFRDH(i32) #1

declare dso_local i64 @IXGBE_VFRDT(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32) #1

declare dso_local i64 @ring_uses_build_skb(%struct.ixgbevf_ring*) #1

declare dso_local i32 @ring_uses_large_buffer(%struct.ixgbevf_ring*) #1

declare dso_local i32 @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @ixgbevf_desc_unused(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
