; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32, i64 }
%struct.pxa168_eth_private = type { i32 }

@PORT_CONFIG = common dso_local global i32 0, align 4
@PORT_CONFIG_EXT = common dso_local global i32 0, align 4
@PCR_DUPLEX_FULL = common dso_local global i32 0, align 4
@PCXR_SPEED_100 = common dso_local global i32 0, align 4
@PCXR_FLOWCTL_DIS = common dso_local global i32 0, align 4
@PCXR_RMII_EN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pxa168_eth_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa168_eth_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pxa168_eth_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.pxa168_eth_private* %10, %struct.pxa168_eth_private** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %4, align 8
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %15 = load i32, i32* @PORT_CONFIG, align 4
  %16 = call i32 @rdl(%struct.pxa168_eth_private* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %18 = load i32, i32* @PORT_CONFIG_EXT, align 4
  %19 = call i32 @rdl(%struct.pxa168_eth_private* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PCR_DUPLEX_FULL, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PCXR_SPEED_100, align 4
  %26 = load i32, i32* @PCXR_FLOWCTL_DIS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PCXR_RMII_EN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %24, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @PCXR_RMII_EN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_100, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @PCXR_SPEED_100, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @PCR_DUPLEX_FULL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @PCXR_FLOWCTL_DIS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %89

78:                                               ; preds = %73, %69
  %79 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %80 = load i32, i32* @PORT_CONFIG, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @wrl(%struct.pxa168_eth_private* %79, i32 %80, i32 %81)
  %83 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %3, align 8
  %84 = load i32, i32* @PORT_CONFIG_EXT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @wrl(%struct.pxa168_eth_private* %83, i32 %84, i32 %85)
  %87 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %88 = call i32 @phy_print_status(%struct.phy_device* %87)
  br label %89

89:                                               ; preds = %78, %77
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rdl(%struct.pxa168_eth_private*, i32) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
