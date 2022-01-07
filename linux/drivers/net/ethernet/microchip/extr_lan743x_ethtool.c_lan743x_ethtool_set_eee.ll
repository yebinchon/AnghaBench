; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_eee = type { i64, i64 }
%struct.lan743x_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Missing PHY Driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"EEE initialization failed\0A\00", align 1
@MAC_EEE_TX_LPI_REQ_DLY_CNT = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_EEE_EN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @lan743x_ethtool_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.lan743x_adapter* %11, %struct.lan743x_adapter** %6, align 8
  store %struct.phy_device* null, %struct.phy_device** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.lan743x_adapter* %19, %struct.lan743x_adapter** %6, align 8
  %20 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %21 = icmp ne %struct.lan743x_adapter* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %101

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.phy_device*, %struct.phy_device** %27, align 8
  store %struct.phy_device* %28, %struct.phy_device** %7, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %30 = icmp ne %struct.phy_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %101

34:                                               ; preds = %25
  %35 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %41 = load i32, i32* @drv, align 4
  %42 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netif_err(%struct.lan743x_adapter* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %34
  %49 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %55 = call i32 @phy_init_eee(%struct.phy_device* %54, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %60 = load i32, i32* @drv, align 4
  %61 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_err(%struct.lan743x_adapter* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %53
  %67 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %72 = load i32, i32* @MAC_EEE_TX_LPI_REQ_DLY_CNT, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %71, i32 %72, i32 %73)
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %76 = load i32, i32* @MAC_CR, align 4
  %77 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %82 = load i32, i32* @MAC_CR, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %81, i32 %82, i32 %83)
  br label %97

85:                                               ; preds = %48
  %86 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %87 = load i32, i32* @MAC_CR, align 4
  %88 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %94 = load i32, i32* @MAC_CR, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %85, %66
  %98 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %99 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %100 = call i32 @phy_ethtool_set_eee(%struct.phy_device* %98, %struct.ethtool_eee* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %58, %39, %31, %22, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @phy_init_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @phy_ethtool_set_eee(%struct.phy_device*, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
