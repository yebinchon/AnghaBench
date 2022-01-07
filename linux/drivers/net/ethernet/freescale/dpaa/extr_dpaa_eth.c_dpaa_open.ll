; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mac_device = type { i32 (%struct.mac_device*)*, i32* }
%struct.dpaa_priv = type { %struct.mac_device* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mac_dev->start() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dpaa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mac_device*, align 8
  %5 = alloca %struct.dpaa_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dpaa_priv* %9, %struct.dpaa_priv** %5, align 8
  %10 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %11 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %10, i32 0, i32 0
  %12 = load %struct.mac_device*, %struct.mac_device** %11, align 8
  store %struct.mac_device* %12, %struct.mac_device** %4, align 8
  %13 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %14 = call i32 @dpaa_eth_napi_enable(%struct.dpaa_priv* %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @dpaa_phy_init(%struct.net_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %84

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %24 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %30 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fman_port_enable(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %63

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %46 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %45, i32 0, i32 0
  %47 = load %struct.mac_device*, %struct.mac_device** %46, align 8
  %48 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %47, i32 0, i32 0
  %49 = load i32 (%struct.mac_device*)*, i32 (%struct.mac_device*)** %48, align 8
  %50 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %51 = call i32 %49(%struct.mac_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %56 = load i32, i32* @ifup, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @netif_err(%struct.dpaa_priv* %55, i32 %56, %struct.net_device* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %44
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_tx_start_all_queues(%struct.net_device* %61)
  store i32 0, i32* %2, align 4
  br label %88

63:                                               ; preds = %54, %39
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %67 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %73 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fman_port_disable(i32 %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %64

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %19
  %85 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %86 = call i32 @dpaa_eth_napi_disable(%struct.dpaa_priv* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %60
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa_eth_napi_enable(%struct.dpaa_priv*) #1

declare dso_local i32 @dpaa_phy_init(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @fman_port_enable(i32) #1

declare dso_local i32 @netif_err(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @fman_port_disable(i32) #1

declare dso_local i32 @dpaa_eth_napi_disable(%struct.dpaa_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
