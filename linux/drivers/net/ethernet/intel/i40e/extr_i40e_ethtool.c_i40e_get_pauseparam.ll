; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_8__, %struct.i40e_dcbx_config, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_dcbx_config = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.i40e_link_status }
%struct.i40e_link_status = type { i32 }

@I40E_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@I40E_FC_RX_PAUSE = common dso_local global i64 0, align 8
@I40E_FC_TX_PAUSE = common dso_local global i64 0, align 8
@I40E_FC_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @i40e_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca %struct.i40e_link_status*, align 8
  %9 = alloca %struct.i40e_dcbx_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %5, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %6, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 0
  store %struct.i40e_hw* %18, %struct.i40e_hw** %7, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.i40e_link_status* %21, %struct.i40e_link_status** %8, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 1
  store %struct.i40e_dcbx_config* %23, %struct.i40e_dcbx_config** %9, align 8
  %24 = load %struct.i40e_link_status*, %struct.i40e_link_status** %8, align 8
  %25 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I40E_AQ_AN_COMPLETED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %9, align 8
  %39 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %82

48:                                               ; preds = %34
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @I40E_FC_RX_PAUSE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %82

58:                                               ; preds = %48
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @I40E_FC_TX_PAUSE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %81

68:                                               ; preds = %58
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %70 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @I40E_FC_FULL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %43, %81, %55
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
