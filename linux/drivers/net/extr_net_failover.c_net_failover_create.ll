; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.failover = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate failover_netdev!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@failover_dev_ops = common dso_local global i32 0, align 4
@failover_ethtool_ops = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@FAILOVER_VLAN_FEATURES = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_GSO_ENCAP_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to register failover_dev!\0A\00", align 1
@net_failover_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.failover* @net_failover_create(%struct.net_device* %0) #0 {
  %2 = alloca %struct.failover*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.failover*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = call %struct.net_device* @alloc_etherdev_mq(i32 4, i32 16)
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.failover* @ERR_PTR(i32 %19)
  store %struct.failover* %20, %struct.failover** %2, align 8
  br label %127

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @dev_net(%struct.net_device* %23)
  %25 = call i32 @dev_net_set(%struct.net_device* %22, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @SET_NETDEV_DEV(%struct.net_device* %26, %struct.device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 8
  store i32* @failover_dev_ops, i32** %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 7
  store i32* @failover_ethtool_ops, i32** %32, align 8
  %33 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %34 = load i32, i32* @IFF_NO_QUEUE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %41 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @NETIF_F_LLTX, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @FAILOVER_VLAN_FEATURES, align 4
  %59 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @NETIF_F_GSO_ENCAP_ALL, align 4
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %81, i32 %84, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = call i32 @register_netdev(%struct.net_device* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %21
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %122

106:                                              ; preds = %21
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @netif_carrier_off(%struct.net_device* %107)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call %struct.failover* @failover_register(%struct.net_device* %109, i32* @net_failover_ops)
  store %struct.failover* %110, %struct.failover** %6, align 8
  %111 = load %struct.failover*, %struct.failover** %6, align 8
  %112 = call i64 @IS_ERR(%struct.failover* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.failover*, %struct.failover** %6, align 8
  %116 = call i32 @PTR_ERR(%struct.failover* %115)
  store i32 %116, i32* %7, align 4
  br label %119

117:                                              ; preds = %106
  %118 = load %struct.failover*, %struct.failover** %6, align 8
  store %struct.failover* %118, %struct.failover** %2, align 8
  br label %127

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @unregister_netdev(%struct.net_device* %120)
  br label %122

122:                                              ; preds = %119, %103
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = call i32 @free_netdev(%struct.net_device* %123)
  %125 = load i32, i32* %7, align 4
  %126 = call %struct.failover* @ERR_PTR(i32 %125)
  store %struct.failover* %126, %struct.failover** %2, align 8
  br label %127

127:                                              ; preds = %122, %117, %15
  %128 = load %struct.failover*, %struct.failover** %2, align 8
  ret %struct.failover* %128
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.failover* @ERR_PTR(i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.failover* @failover_register(%struct.net_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.failover*) #1

declare dso_local i32 @PTR_ERR(%struct.failover*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
