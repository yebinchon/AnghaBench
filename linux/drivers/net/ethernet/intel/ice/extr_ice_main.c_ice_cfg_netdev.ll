; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_cfg_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_cfg_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, %struct.net_device*, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.ice_pf* }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.ice_pf = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }

@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@ICE_MAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_cfg_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_cfg_netdev(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca %struct.ice_netdev_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 6
  %13 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  store %struct.ice_pf* %13, %struct.ice_pf** %4, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.net_device* @alloc_etherdev_mqs(i32 8, i32 %20, i32 %23)
  store %struct.net_device* %24, %struct.net_device** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %109

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 1
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %34)
  store %struct.ice_netdev_priv* %35, %struct.ice_netdev_priv** %5, align 8
  %36 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %37 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %37, i32 0, i32 0
  store %struct.ice_vsi* %36, %struct.ice_vsi** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i32 @ice_set_netdev_features(%struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @ice_set_ops(%struct.net_device* %41)
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ICE_VSI_PF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %30
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %51 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @SET_NETDEV_DEV(%struct.net_device* %49, i32* %53)
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ether_addr_copy(i32* %17, i32* %60)
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ether_addr_copy(i32* %64, i32* %17)
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ether_addr_copy(i32* %68, i32* %17)
  br label %70

70:                                               ; preds = %48, %30
  %71 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %77 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ice_vsi_cfg_netdev_tc(%struct.ice_vsi* %76, i32 %80)
  %82 = load i32, i32* @HZ, align 4
  %83 = mul nsw i32 5, %82
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @ETH_MIN_MTU, align 4
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @ICE_MAX_MTU, align 4
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %93 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %92, i32 0, i32 1
  %94 = load %struct.net_device*, %struct.net_device** %93, align 8
  %95 = call i32 @register_netdev(%struct.net_device* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %70
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %109

100:                                              ; preds = %70
  %101 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %102 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %101, i32 0, i32 1
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = call i32 @netif_carrier_off(%struct.net_device* %103)
  %105 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %106 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %105, i32 0, i32 1
  %107 = load %struct.net_device*, %struct.net_device** %106, align 8
  %108 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %107)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %109

109:                                              ; preds = %100, %98, %27
  %110 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #2

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @ice_set_netdev_features(%struct.net_device*) #2

declare dso_local i32 @ice_set_ops(%struct.net_device*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @ice_vsi_cfg_netdev_tc(%struct.ice_vsi*, i32) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #2

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
