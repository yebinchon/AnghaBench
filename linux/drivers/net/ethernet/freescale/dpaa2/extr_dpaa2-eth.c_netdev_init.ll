; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_priv = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@dpaa2_eth_ops = common dso_local global i32 0, align 4
@dpaa2_ethtool_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dpni_add_mac_addr() failed\0A\00", align 1
@DPAA2_ETH_MAX_MTU = common dso_local global i32 0, align 4
@DPAA2_ETH_MFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"dpni_set_max_frame_length() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"netif_set_real_num_tx_queues() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"netif_set_real_num_rx_queues() failed\0A\00", align 1
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@DPNI_OPT_NO_MAC_FILTER = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.dpaa2_eth_priv* %19, %struct.dpaa2_eth_priv** %5, align 8
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %21 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 5
  store i32* @dpaa2_eth_ops, i32** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 4
  store i32* @dpaa2_ethtool_ops, i32** %31, align 8
  %32 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %33 = call i32 @set_mac_addr(%struct.dpaa2_eth_priv* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

38:                                               ; preds = %1
  %39 = call i32 @eth_broadcast_addr(i32* %27)
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %41 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %44 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dpni_add_mac_addr(i32 %42, i32 0, i32 %45, i32* %27)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

53:                                               ; preds = %38
  %54 = load i32, i32* @DPAA2_ETH_MAX_MTU, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %58 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %61 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DPAA2_ETH_MFL, align 4
  %64 = call i32 @dpni_set_max_frame_length(i32 %59, i32 0, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

71:                                               ; preds = %53
  %72 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %73 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

83:                                               ; preds = %71
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

93:                                               ; preds = %83
  %94 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @DPNI_OPT_NO_MAC_FILTER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %109

105:                                              ; preds = %93
  %106 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %8, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %122 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @NETIF_F_SG, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @NETIF_F_LLTX, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %109, %89, %79, %67, %49, %36
  %140 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @set_mac_addr(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @dpni_add_mac_addr(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpni_set_max_frame_length(i32, i32, i32, i32) #1

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
