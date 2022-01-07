; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_setup_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.gemini_ethernet_port = type { i64, %struct.device* }
%struct.device = type { i32 }
%union.gmac_status = type { i32 }
%struct.TYPE_2__ = type { i32 }

@gmac_speed_set = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MII: set GMAC0 to GMII mode, GMAC1 disabled\0A\00", align 1
@GMAC_PHY_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"GMII: set GMAC0 to GMII mode, GMAC1 disabled\0A\00", align 1
@GMAC_PHY_GMII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"RGMII: set GMAC0 and GMAC1 to MII/RGMII mode\0A\00", align 1
@GMAC_PHY_RGMII_100_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported MII interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GMAC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gmac_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_setup_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gemini_ethernet_port*, align 8
  %5 = alloca %union.gmac_status, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %8)
  store %struct.gemini_ethernet_port* %9, %struct.gemini_ethernet_port** %4, align 8
  %10 = bitcast %union.gmac_status* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %12 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @gmac_speed_set, align 4
  %19 = call %struct.phy_device* @of_phy_get_and_connect(%struct.net_device* %14, i32 %17, i32 %18)
  store %struct.phy_device* %19, %struct.phy_device** %7, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %21 = icmp ne %struct.phy_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %80

25:                                               ; preds = %1
  %26 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store %struct.phy_device* %26, %struct.phy_device** %28, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %30 = load i32, i32* @SPEED_1000, align 4
  %31 = call i32 @phy_set_max_speed(%struct.phy_device* %29, i32 %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %33 = call i32 @phy_support_asym_pause(%struct.phy_device* %32)
  %34 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 129, label %37
    i32 130, label %43
    i32 128, label %49
  ]

37:                                               ; preds = %25
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netdev_dbg(%struct.net_device* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @GMAC_PHY_MII, align 4
  %41 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %64

43:                                               ; preds = %25
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netdev_dbg(%struct.net_device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @GMAC_PHY_GMII, align 4
  %47 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %64

49:                                               ; preds = %25
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netdev_dbg(%struct.net_device* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @GMAC_PHY_RGMII_100_10, align 4
  %53 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %64

55:                                               ; preds = %25
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %59 = call i32 @phy_disconnect(%struct.phy_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  store %struct.phy_device* null, %struct.phy_device** %61, align 8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %80

64:                                               ; preds = %49, %43, %37
  %65 = bitcast %union.gmac_status* %5 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %68 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GMAC_STATUS, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %74 = call i64 @netif_msg_link(%struct.gemini_ethernet_port* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %78 = call i32 @phy_attached_info(%struct.phy_device* %77)
  br label %79

79:                                               ; preds = %76, %64
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %55, %22
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.phy_device* @of_phy_get_and_connect(%struct.net_device*, i32, i32) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @netif_msg_link(%struct.gemini_ethernet_port*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
