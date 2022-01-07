; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i64 }
%struct.xgene_enet_pdata = type { i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)* }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @xgene_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.xgene_enet_pdata*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xgene_enet_pdata* %9, %struct.xgene_enet_pdata** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %7, align 8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @phy_interface_mode_is_rgmii(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %18, %2
  %25 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %26 = icmp ne %struct.phy_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %128

30:                                               ; preds = %24
  %31 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %32 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %33 = call i32 @phy_validate_pause(%struct.phy_device* %31, %struct.ethtool_pauseparam* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %128

38:                                               ; preds = %30
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %48 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %55 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @phy_set_asym_pause(%struct.phy_device* %54, i32 %57, i32 %60)
  %62 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %38
  %67 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %68 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)** %70, align 8
  %72 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %73 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %74 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %71(%struct.xgene_enet_pdata* %72, i32 %75)
  %77 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %78 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)** %80, align 8
  %82 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %83 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %84 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %81(%struct.xgene_enet_pdata* %82, i32 %85)
  br label %87

87:                                               ; preds = %66, %38
  br label %127

88:                                               ; preds = %18
  %89 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %128

96:                                               ; preds = %88
  %97 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %101 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %106 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %108 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)** %110, align 8
  %112 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %113 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %114 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %111(%struct.xgene_enet_pdata* %112, i32 %115)
  %117 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %118 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)** %120, align 8
  %122 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %123 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %124 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %121(%struct.xgene_enet_pdata* %122, i32 %125)
  br label %127

127:                                              ; preds = %96, %87
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %93, %35, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @phy_validate_pause(%struct.phy_device*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @phy_set_asym_pause(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
