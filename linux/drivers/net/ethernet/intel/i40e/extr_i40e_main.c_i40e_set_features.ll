; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Offloaded tc filters active, can't turn hw_tc_offload off\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_HW_L2FW_DOFFLOAD = common dso_local global i32 0, align 4
@I40E_PF_RESET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @i40e_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %6, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %13, align 8
  store %struct.i40e_vsi* %14, %struct.i40e_vsi** %7, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 1
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NETIF_F_RXHASH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_RXHASH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %31 = call i32 @i40e_pf_config_rss(%struct.i40e_pf* %30)
  br label %48

32:                                               ; preds = %22, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NETIF_F_RXHASH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NETIF_F_RXHASH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %46 = call i32 @i40e_clear_rss_lut(%struct.i40e_vsi* %45)
  br label %47

47:                                               ; preds = %44, %37, %32
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %55 = call i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi* %54)
  br label %59

56:                                               ; preds = %48
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %58 = call i32 @i40e_vlan_stripping_disable(%struct.i40e_vsi* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NETIF_F_HW_TC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %101

77:                                               ; preds = %64, %59
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @NETIF_F_HW_L2FW_DOFFLOAD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %84 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %89 = call i32 @i40e_del_all_macvlans(%struct.i40e_vsi* %88)
  br label %90

90:                                               ; preds = %87, %82, %77
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @i40e_set_ntuple(%struct.i40e_pf* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %98 = load i32, i32* @I40E_PF_RESET_FLAG, align 4
  %99 = call i32 @i40e_do_reset(%struct.i40e_pf* %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %90
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %69
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_pf_config_rss(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_clear_rss_lut(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vlan_stripping_disable(%struct.i40e_vsi*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i40e_del_all_macvlans(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_set_ntuple(%struct.i40e_pf*, i32) #1

declare dso_local i32 @i40e_do_reset(%struct.i40e_pf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
