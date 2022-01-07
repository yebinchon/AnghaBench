; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_fec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_fec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aq_get_phy_abilities_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_aq_set_phy_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I40E_AQ_PHY_FEC_CONFIG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Set phy config failed, err %s aq_err %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Updating link info failed with err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @i40e_set_fec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_fec_cfg(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_aq_set_phy_config, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.i40e_netdev_priv* %14, %struct.i40e_netdev_priv** %5, align 8
  %15 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %7, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 1
  store %struct.i40e_hw* %21, %struct.i40e_hw** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @READ_ONCE(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @i40e_set_fec_in_flags(i32 %26, i32* %10)
  %28 = bitcast %struct.i40e_aq_get_phy_abilities_resp* %6 to %struct.i40e_aq_set_phy_config*
  %29 = call i32 @memset(%struct.i40e_aq_set_phy_config* %28, i32 0, i32 44)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %31 = bitcast %struct.i40e_aq_get_phy_abilities_resp* %6 to %struct.i40e_aq_set_phy_config*
  %32 = call i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %30, i32 0, i32 0, %struct.i40e_aq_set_phy_config* %31, i32* null)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %110

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %38
  %44 = call i32 @memset(%struct.i40e_aq_set_phy_config* %12, i32 0, i32 44)
  %45 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 10
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 9
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @I40E_AQ_PHY_FEC_CONFIG_MASK, align 4
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %12, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %71 = call i64 @i40e_aq_set_phy_config(%struct.i40e_hw* %70, %struct.i40e_aq_set_phy_config* %12, i32* null)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %43
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @i40e_stat_str(%struct.i40e_hw* %76, i64 %77)
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %81 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @i40e_aq_str(%struct.i40e_hw* %79, i32 %83)
  %85 = call i32 @netdev_info(%struct.net_device* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %110

88:                                               ; preds = %43
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %93 = call i64 @i40e_update_link_info(%struct.i40e_hw* %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @i40e_stat_str(%struct.i40e_hw* %98, i64 %99)
  %101 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @i40e_aq_str(%struct.i40e_hw* %101, i32 %105)
  %107 = call i32 @netdev_dbg(%struct.net_device* %97, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %106)
  br label %108

108:                                              ; preds = %96, %88
  br label %109

109:                                              ; preds = %108, %38
  br label %110

110:                                              ; preds = %109, %74, %35
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @i40e_set_fec_in_flags(i32, i32*) #1

declare dso_local i32 @memset(%struct.i40e_aq_set_phy_config*, i32, i32) #1

declare dso_local i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_set_phy_config*, i32*) #1

declare dso_local i64 @i40e_aq_set_phy_config(%struct.i40e_hw*, %struct.i40e_aq_set_phy_config*, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_update_link_info(%struct.i40e_hw*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
