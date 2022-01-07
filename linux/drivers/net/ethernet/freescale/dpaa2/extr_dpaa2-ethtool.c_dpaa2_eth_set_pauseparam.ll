; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i64, i64 }
%struct.dpaa2_eth_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dpni_link_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"No pause frame support for DPNI version < %d.%d\0A\00", align 1
@DPNI_PAUSE_VER_MAJOR = common dso_local global i32 0, align 4
@DPNI_PAUSE_VER_MINOR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DPNI_LINK_OPT_PAUSE = common dso_local global i32 0, align 4
@DPNI_LINK_OPT_ASYM_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dpni_set_link_state failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @dpaa2_eth_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.dpni_link_cfg, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dpaa2_eth_priv* %10, %struct.dpaa2_eth_priv** %6, align 8
  %11 = bitcast %struct.dpni_link_cfg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %13 = call i32 @dpaa2_eth_has_pause_support(%struct.dpaa2_eth_priv* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load i32, i32* @DPNI_PAUSE_VER_MAJOR, align 4
  %18 = load i32, i32* @DPNI_PAUSE_VER_MINOR, align 4
  %19 = call i32 @netdev_info(%struct.net_device* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %113

30:                                               ; preds = %22
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %37 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32, i32* @DPNI_LINK_OPT_PAUSE, align 4
  %47 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %30
  %51 = load i32, i32* @DPNI_LINK_OPT_PAUSE, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = xor i32 %63, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load i32, i32* @DPNI_LINK_OPT_ASYM_PAUSE, align 4
  %75 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %56
  %79 = load i32, i32* @DPNI_LINK_OPT_ASYM_PAUSE, align 4
  %80 = xor i32 %79, -1
  %81 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %88 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %113

93:                                               ; preds = %84
  %94 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %95 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %98 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dpni_set_link_cfg(i32 %96, i32 0, i32 %99, %struct.dpni_link_cfg* %7)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 @netdev_err(%struct.net_device* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %93
  %108 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %111 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %103, %92, %27, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dpaa2_eth_has_pause_support(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dpni_set_link_cfg(i32, i32, i32, %struct.dpni_link_cfg*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
