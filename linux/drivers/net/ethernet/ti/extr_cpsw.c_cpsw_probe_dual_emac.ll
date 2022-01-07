; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_probe_dual_emac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_probe_dual_emac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, i32, i32, %struct.TYPE_6__*, %struct.net_device*, %struct.cpsw_common* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_6__, i32*, i32*, i32 }
%struct.cpsw_common = type { i32, %struct.TYPE_8__*, %struct.cpsw_platform_data }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.cpsw_platform_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CPSW_MAX_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cpsw: error allocating net_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@CPSW_DEBUG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cpsw: Detected MACID = %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cpsw: Random MACID = %pM\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@cpsw_netdev_ops = common dso_local global i32 0, align 4
@cpsw_ethtool_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"cpsw: error registering net device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*)* @cpsw_probe_dual_emac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_probe_dual_emac(%struct.cpsw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca %struct.cpsw_platform_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cpsw_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %3, align 8
  %9 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %10 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %9, i32 0, i32 5
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  store %struct.cpsw_common* %11, %struct.cpsw_common** %4, align 8
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %13 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %12, i32 0, i32 2
  store %struct.cpsw_platform_data* %13, %struct.cpsw_platform_data** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %15 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CPSW_MAX_QUEUES, align 4
  %18 = load i32, i32* @CPSW_MAX_QUEUES, align 4
  %19 = call %struct.net_device* @devm_alloc_etherdev_mqs(i32 %16, i32 40, i32 %17, i32 %18)
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %141

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %30)
  store %struct.cpsw_priv* %31, %struct.cpsw_priv** %7, align 8
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %33 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %34 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %33, i32 0, i32 5
  store %struct.cpsw_common* %32, %struct.cpsw_common** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %37 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %36, i32 0, i32 4
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %41 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %40, i32 0, i32 3
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load i32, i32* @debug_level, align 4
  %43 = load i32, i32* @CPSW_DEBUG, align 4
  %44 = call i32 @netif_msg_init(i32 %42, i32 %43)
  %45 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %46 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cpsw_platform_data*, %struct.cpsw_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.cpsw_platform_data, %struct.cpsw_platform_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @is_valid_ether_addr(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %29
  %56 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %57 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cpsw_platform_data*, %struct.cpsw_platform_data** %5, align 8
  %60 = getelementptr inbounds %struct.cpsw_platform_data, %struct.cpsw_platform_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32 %58, i32 %64, i32 %65)
  %67 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %68 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %71 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %86

74:                                               ; preds = %29
  %75 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %76 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @eth_random_addr(i32 %77)
  %79 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %80 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %83 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %74, %55
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %91 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %96 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %99 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store %struct.net_device* %97, %struct.net_device** %102, align 8
  %103 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %104 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 3
  store i32* @cpsw_netdev_ops, i32** %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 2
  store i32* @cpsw_ethtool_ops, i32** %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %116 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @SET_NETDEV_DEV(%struct.net_device* %114, i32 %117)
  %119 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %120 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = call i32 @register_netdev(%struct.net_device* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %86
  %135 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %136 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %86
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %22
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.net_device* @devm_alloc_etherdev_mqs(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
