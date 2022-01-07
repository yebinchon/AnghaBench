; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_devinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_devinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.skge_hw = type { i64, %struct.net_device**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.skge_port = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.skge_hw*, %struct.net_device*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@skge_netdev_ops = common dso_local global i32 0, align 4
@skge_ethtool_ops = common dso_local global i32 0, align 4
@TX_WATCHDOG = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@ETH_JUMBO_MTU = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@skge_poll = common dso_local global i32 0, align 4
@NAPI_WEIGHT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@default_msg = common dso_local global i32 0, align 4
@DEFAULT_TX_RING_SIZE = common dso_local global i32 0, align 4
@DEFAULT_RX_RING_SIZE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@FLOW_MODE_SYM_OR_REM = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@xm_link_timer = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.skge_hw*, i32, i32)* @skge_devinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @skge_devinit(%struct.skge_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skge_port*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %10, %struct.net_device** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %9, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %162

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %9, align 8
  %16 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %17 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @SET_NETDEV_DEV(%struct.net_device* %15, i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 8
  store i32* @skge_netdev_ops, i32** %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 7
  store i32* @skge_ethtool_ops, i32** %24, align 8
  %25 = load i32, i32* @TX_WATCHDOG, align 4
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %29 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ETH_ZLEN, align 4
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ETH_JUMBO_MTU, align 4
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %14
  %44 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %14
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = call %struct.skge_port* @netdev_priv(%struct.net_device* %50)
  store %struct.skge_port* %51, %struct.skge_port** %8, align 8
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %54 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %53, i32 0, i32 13
  %55 = load i32, i32* @skge_poll, align 4
  %56 = load i32, i32* @NAPI_WEIGHT, align 4
  %57 = call i32 @netif_napi_add(%struct.net_device* %52, i32* %54, i32 %55, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %60 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %59, i32 0, i32 12
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %62 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %63 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %62, i32 0, i32 11
  store %struct.skge_hw* %61, %struct.skge_hw** %63, align 8
  %64 = load i32, i32* @debug, align 4
  %65 = load i32, i32* @default_msg, align 4
  %66 = call i32 @netif_msg_init(i32 %64, i32 %65)
  %67 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %68 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @DEFAULT_TX_RING_SIZE, align 4
  %70 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %71 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @DEFAULT_RX_RING_SIZE, align 4
  %74 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %75 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @AUTONEG_ENABLE, align 4
  %78 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %79 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @FLOW_MODE_SYM_OR_REM, align 4
  %81 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %82 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %84 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  %85 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %86 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %85, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  %87 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %88 = call i32 @skge_supported_modes(%struct.skge_hw* %87)
  %89 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %90 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %92 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i64 @device_can_wakeup(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %49
  %98 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %99 = call i32 @wol_supported(%struct.skge_hw* %98)
  %100 = load i32, i32* @WAKE_MAGIC, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %103 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %105 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %109 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_set_wakeup_enable(i32* %107, i32 %110)
  br label %112

112:                                              ; preds = %97, %49
  %113 = load %struct.net_device*, %struct.net_device** %9, align 8
  %114 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %115 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %114, i32 0, i32 1
  %116 = load %struct.net_device**, %struct.net_device*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.net_device*, %struct.net_device** %116, i64 %118
  store %struct.net_device* %113, %struct.net_device** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %122 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %124 = call i64 @is_genesis(%struct.skge_hw* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %128 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %127, i32 0, i32 4
  %129 = load i32, i32* @xm_link_timer, align 4
  %130 = call i32 @timer_setup(i32* %128, i32 %129, i32 0)
  br label %146

131:                                              ; preds = %112
  %132 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %133 = load i32, i32* @NETIF_F_SG, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.net_device*, %struct.net_device** %9, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.net_device*, %struct.net_device** %9, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.net_device*, %struct.net_device** %9, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %131, %126
  %147 = load %struct.net_device*, %struct.net_device** %9, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %151 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @B2_MAC_1, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %6, align 4
  %156 = mul nsw i32 %155, 8
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %154, %157
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy_fromio(i32 %149, i64 %158, i32 %159)
  %161 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %161, %struct.net_device** %4, align 8
  br label %162

162:                                              ; preds = %146, %13
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %163
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @skge_supported_modes(%struct.skge_hw*) #1

declare dso_local i64 @device_can_wakeup(i32*) #1

declare dso_local i32 @wol_supported(%struct.skge_hw*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
