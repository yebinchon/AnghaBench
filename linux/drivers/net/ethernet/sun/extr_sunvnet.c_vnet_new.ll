; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet = type { i32, i32, i32*, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i64 }
%struct.vio_dev = type { i32 }

@VNET_MAX_TXQS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNET_PACKET_SKIP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@VNET_PORT_HASH_SIZE = common dso_local global i32 0, align 4
@vnet_ops = common dso_local global i32 0, align 4
@vnet_ethtool_ops = common dso_local global i32 0, align 4
@VNET_TX_TIMEOUT = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@VNET_MAX_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Sun LDOM vnet %pM\0A\00", align 1
@vnet_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vnet* (i32*, %struct.vio_dev*)* @vnet_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vnet* @vnet_new(i32* %0, %struct.vio_dev* %1) #0 {
  %3 = alloca %struct.vnet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vio_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %5, align 8
  %10 = load i32, i32* @VNET_MAX_TXQS, align 4
  %11 = call %struct.net_device* @alloc_etherdev_mqs(i32 40, i32 %10, i32 1)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.vnet* @ERR_PTR(i32 %16)
  store %struct.vnet* %17, %struct.vnet** %3, align 8
  br label %135

18:                                               ; preds = %2
  %19 = load i64, i64* @VNET_PACKET_SKIP, align 8
  %20 = add nsw i64 %19, 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 9
  store i64 %20, i64* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %43, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 5, %32
  %34 = mul nsw i32 %33, 8
  %35 = ashr i32 %31, %34
  %36 = and i32 %35, 255
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call %struct.vnet* @netdev_priv(%struct.net_device* %47)
  store %struct.vnet* %48, %struct.vnet** %7, align 8
  %49 = load %struct.vnet*, %struct.vnet** %7, align 8
  %50 = getelementptr inbounds %struct.vnet, %struct.vnet* %49, i32 0, i32 5
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.vnet*, %struct.vnet** %7, align 8
  %54 = getelementptr inbounds %struct.vnet, %struct.vnet* %53, i32 0, i32 4
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load %struct.vnet*, %struct.vnet** %7, align 8
  %56 = getelementptr inbounds %struct.vnet, %struct.vnet* %55, i32 0, i32 3
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %46
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @VNET_PORT_HASH_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.vnet*, %struct.vnet** %7, align 8
  %64 = getelementptr inbounds %struct.vnet, %struct.vnet* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @INIT_HLIST_HEAD(i32* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.vnet*, %struct.vnet** %7, align 8
  %75 = getelementptr inbounds %struct.vnet, %struct.vnet* %74, i32 0, i32 1
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vnet*, %struct.vnet** %7, align 8
  %80 = getelementptr inbounds %struct.vnet, %struct.vnet* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 8
  store i32* @vnet_ops, i32** %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 7
  store i32* @vnet_ethtool_ops, i32** %84, align 8
  %85 = load i32, i32* @VNET_TX_TIMEOUT, align 4
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @NETIF_F_TSO, align 4
  %89 = load i32, i32* @NETIF_F_GSO, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NETIF_F_SG, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @ETH_MIN_MTU, align 4
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @VNET_MAX_MTU, align 4
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %112 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %111, i32 0, i32 0
  %113 = call i32 @SET_NETDEV_DEV(%struct.net_device* %110, i32* %112)
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = call i32 @register_netdev(%struct.net_device* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %73
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %130

120:                                              ; preds = %73
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %124)
  %126 = load %struct.vnet*, %struct.vnet** %7, align 8
  %127 = getelementptr inbounds %struct.vnet, %struct.vnet* %126, i32 0, i32 1
  %128 = call i32 @list_add(i32* %127, i32* @vnet_list)
  %129 = load %struct.vnet*, %struct.vnet** %7, align 8
  store %struct.vnet* %129, %struct.vnet** %3, align 8
  br label %135

130:                                              ; preds = %118
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @free_netdev(%struct.net_device* %131)
  %133 = load i32, i32* %8, align 4
  %134 = call %struct.vnet* @ERR_PTR(i32 %133)
  store %struct.vnet* %134, %struct.vnet** %3, align 8
  br label %135

135:                                              ; preds = %130, %120, %14
  %136 = load %struct.vnet*, %struct.vnet** %3, align 8
  ret %struct.vnet* %136
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local %struct.vnet* @ERR_PTR(i32) #1

declare dso_local %struct.vnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
