; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i64 }
%struct.vio_dev = type { i32 }
%struct.vnet_port = type { i32 }

@VNET_MAX_TXQS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNET_PACKET_SKIP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vif%d.%d\00", align 1
@vsw_ops = common dso_local global i32 0, align 4
@vsw_ethtool_ops = common dso_local global i32 0, align 4
@VSW_TX_TIMEOUT = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@VNET_MAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i32*, %struct.vio_dev*, i64, i64)* @vsw_alloc_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @vsw_alloc_netdev(i32* %0, %struct.vio_dev* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.vnet_port*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @VNET_MAX_TXQS, align 4
  %14 = call %struct.net_device* @alloc_etherdev_mqs(i32 4, i32 %13, i32 1)
  store %struct.net_device* %14, %struct.net_device** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %10, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.net_device* @ERR_PTR(i32 %19)
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  br label %97

21:                                               ; preds = %4
  %22 = load i64, i64* @VNET_PACKET_SKIP, align 8
  %23 = add nsw i64 %22, 8
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 11
  store i64 %23, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %10, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %57, %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 10
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load %struct.net_device*, %struct.net_device** %10, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @sprintf(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %10, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 7
  store i32* @vsw_ops, i32** %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %10, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 6
  store i32* @vsw_ethtool_ops, i32** %72, align 8
  %73 = load i32, i32* @VSW_TX_TIMEOUT, align 4
  %74 = load %struct.net_device*, %struct.net_device** %10, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %77 = load i32, i32* @NETIF_F_SG, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.net_device*, %struct.net_device** %10, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %10, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @ETH_MIN_MTU, align 4
  %87 = load %struct.net_device*, %struct.net_device** %10, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @VNET_MAX_MTU, align 4
  %90 = load %struct.net_device*, %struct.net_device** %10, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.net_device*, %struct.net_device** %10, align 8
  %93 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %94 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %93, i32 0, i32 0
  %95 = call i32 @SET_NETDEV_DEV(%struct.net_device* %92, i32* %94)
  %96 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %96, %struct.net_device** %5, align 8
  br label %97

97:                                               ; preds = %60, %17
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %98
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
