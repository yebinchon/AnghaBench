; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vxlan_dev = type { i32*, i32*, i32, %struct.net_device*, i32, i32 }

@vxlan_type = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_SOFTWARE = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@vxlan_cleanup = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@FDB_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vxlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxlan_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %5)
  store %struct.vxlan_dev* %6, %struct.vxlan_dev** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @eth_hw_addr_random(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @ether_setup(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %13, i32* @vxlan_type)
  %15 = load i32, i32* @NETIF_F_LLTX, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @NETIF_F_SG, align 4
  %21 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NETIF_F_SG, align 4
  %43 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @netif_keep_dst(%struct.net_device* %56)
  %58 = load i32, i32* @IFF_NO_QUEUE, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @ETH_MIN_MTU, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ETH_MAX_MTU, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %70 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %69, i32 0, i32 5
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %73 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %72, i32 0, i32 4
  %74 = load i32, i32* @vxlan_cleanup, align 4
  %75 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %76 = call i32 @timer_setup(i32* %73, i32 %74, i32 %75)
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %79 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %78, i32 0, i32 3
  store %struct.net_device* %77, %struct.net_device** %79, align 8
  %80 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %81 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %80, i32 0, i32 2
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @gro_cells_init(i32* %81, %struct.net_device* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %103, %1
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @FDB_HASH_SIZE, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %90 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %97 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @INIT_HLIST_HEAD(i32* %101)
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %84

106:                                              ; preds = %84
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @gro_cells_init(i32*, %struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
