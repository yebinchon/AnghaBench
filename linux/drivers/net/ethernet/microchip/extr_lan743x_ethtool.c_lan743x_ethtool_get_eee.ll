; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32 }
%struct.lan743x_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Missing PHY Driver\0A\00", align 1
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_EEE_EN_ = common dso_local global i32 0, align 4
@MAC_EEE_TX_LPI_REQ_DLY_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @lan743x_ethtool_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
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
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %7, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %16 = icmp ne %struct.phy_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %27 = load i32, i32* @drv, align 4
  %28 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_err(%struct.lan743x_adapter* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %20
  %35 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %36 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %37 = call i32 @phy_ethtool_get_eee(%struct.phy_device* %35, %struct.ethtool_eee* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %44 = load i32, i32* @MAC_CR, align 4
  %45 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %69 = load i32, i32* @MAC_EEE_TX_LPI_REQ_DLY_CNT, align 4
  %70 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  br label %83

74:                                               ; preds = %42
  %75 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %79, i32 0, i32 4
  store i32 0, i32* %80, align 4
  %81 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %81, i32 0, i32 5
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %50
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %40, %25, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @phy_ethtool_get_eee(%struct.phy_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
