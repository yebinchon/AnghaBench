; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_eth_dwmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_eth_dwmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32 }
%struct.dwc_eth_dwmac_data = type { i32 (%struct.platform_device*)* }

@.str = private unnamed_addr constant [31 x i8] c"failed to remove platform: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to remove subdriver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc_eth_dwmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_eth_dwmac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.dwc_eth_dwmac_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.stmmac_priv* %10, %struct.stmmac_priv** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.dwc_eth_dwmac_data* @of_device_get_match_data(i32* %12)
  store %struct.dwc_eth_dwmac_data* %13, %struct.dwc_eth_dwmac_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @stmmac_dvr_remove(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.dwc_eth_dwmac_data*, %struct.dwc_eth_dwmac_data** %5, align 8
  %26 = getelementptr inbounds %struct.dwc_eth_dwmac_data, %struct.dwc_eth_dwmac_data* %25, i32 0, i32 0
  %27 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %26, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = call i32 %27(%struct.platform_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %38, i32 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dwc_eth_dwmac_data* @of_device_get_match_data(i32*) #1

declare dso_local i32 @stmmac_dvr_remove(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
