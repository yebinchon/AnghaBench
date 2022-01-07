; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, i64, %struct.sky2_hw* }
%struct.sky2_hw = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B0_IMSK = common dso_local global i32 0, align 4
@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@IPG_DATA_DEF_1000 = common dso_local global i32 0, align 4
@IPG_DATA_DEF_10_100 = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@RB_CTRL = common dso_local global i32 0, align 4
@RB_ENA_OP_MD = common dso_local global i32 0, align 4
@B0_Y2_SP_LISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sky2_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %13)
  store %struct.sky2_port* %14, %struct.sky2_port** %6, align 8
  %15 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %16 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %15, i32 0, i32 2
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %16, align 8
  store %struct.sky2_hw* %17, %struct.sky2_hw** %7, align 8
  %18 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %19 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @netdev_update_features(%struct.net_device* %28)
  store i32 0, i32* %3, align 4
  br label %166

30:                                               ; preds = %2
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %32 = load i32, i32* @B0_IMSK, align 4
  %33 = call i32 @sky2_read32(%struct.sky2_hw* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %35 = load i32, i32* @B0_IMSK, align 4
  %36 = call i32 @sky2_write32(%struct.sky2_hw* %34, i32 %35, i32 0)
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %38 = load i32, i32* @B0_IMSK, align 4
  %39 = call i32 @sky2_read32(%struct.sky2_hw* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netif_trans_update(%struct.net_device* %40)
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %43 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %42, i32 0, i32 1
  %44 = call i32 @napi_disable(i32* %43)
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netif_tx_disable(%struct.net_device* %45)
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %48 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @synchronize_irq(i32 %51)
  %53 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %54 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %30
  %60 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @sky2_set_tx_stfwd(%struct.sky2_hw* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %30
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @GM_GP_CTRL, align 4
  %67 = call i32 @gma_read16(%struct.sky2_hw* %64, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GM_GP_CTRL, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = call i32 @gma_write16(%struct.sky2_hw* %68, i32 %69, i32 %70, i32 %74)
  %76 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %77 = call i32 @sky2_rx_stop(%struct.sky2_port* %76)
  %78 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %79 = call i32 @sky2_rx_clean(%struct.sky2_port* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @netdev_update_features(%struct.net_device* %83)
  %85 = load i32, i32* @DATA_BLIND_DEF, align 4
  %86 = call i32 @DATA_BLIND_VAL(i32 %85)
  %87 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %90 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SPEED_100, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %63
  %95 = load i32, i32* @IPG_DATA_DEF_1000, align 4
  %96 = call i32 @IPG_DATA_VAL(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %104

99:                                               ; preds = %63
  %100 = load i32, i32* @IPG_DATA_DEF_10_100, align 4
  %101 = call i32 @IPG_DATA_VAL(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ETH_DATA_LEN, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @GM_SERIAL_MODE, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @gma_write16(%struct.sky2_hw* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %121 = load i32*, i32** @rxqaddr, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RB_CTRL, align 4
  %127 = call i32 @RB_ADDR(i32 %125, i32 %126)
  %128 = load i32, i32* @RB_ENA_OP_MD, align 4
  %129 = call i32 @sky2_write8(%struct.sky2_hw* %120, i32 %127, i32 %128)
  %130 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %131 = call i32 @sky2_alloc_rx_skbs(%struct.sky2_port* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %114
  %135 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %136 = call i32 @sky2_rx_start(%struct.sky2_port* %135)
  br label %140

137:                                              ; preds = %114
  %138 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %139 = call i32 @sky2_rx_clean(%struct.sky2_port* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %142 = load i32, i32* @B0_IMSK, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @sky2_write32(%struct.sky2_hw* %141, i32 %142, i32 %143)
  %145 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %146 = load i32, i32* @B0_Y2_SP_LISR, align 4
  %147 = call i32 @sky2_read32(%struct.sky2_hw* %145, i32 %146)
  %148 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %149 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %148, i32 0, i32 1
  %150 = call i32 @napi_enable(i32* %149)
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %140
  %154 = load %struct.net_device*, %struct.net_device** %4, align 8
  %155 = call i32 @dev_close(%struct.net_device* %154)
  br label %164

156:                                              ; preds = %140
  %157 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @GM_GP_CTRL, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @gma_write16(%struct.sky2_hw* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @netif_wake_queue(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @sky2_set_tx_stfwd(%struct.sky2_hw*, i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @sky2_rx_stop(%struct.sky2_port*) #1

declare dso_local i32 @sky2_rx_clean(%struct.sky2_port*) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @sky2_alloc_rx_skbs(%struct.sky2_port*) #1

declare dso_local i32 @sky2_rx_start(%struct.sky2_port*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
