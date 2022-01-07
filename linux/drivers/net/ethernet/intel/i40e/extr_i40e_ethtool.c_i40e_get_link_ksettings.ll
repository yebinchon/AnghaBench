; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.i40e_link_status }
%struct.i40e_link_status = type { i32, i32 }

@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@I40E_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@Backplane = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @i40e_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca %struct.i40e_link_status*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
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
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.i40e_link_status* %21, %struct.i40e_link_status** %8, align 8
  %22 = load %struct.i40e_link_status*, %struct.i40e_link_status** %8, align 8
  %23 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %28 = load i32, i32* @supported, align 4
  %29 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %27, i32 %28)
  %30 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %31 = load i32, i32* @advertising, align 4
  %32 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %40 = call i32 @i40e_get_settings_link_up(%struct.i40e_hw* %36, %struct.ethtool_link_ksettings* %37, %struct.net_device* %38, %struct.i40e_pf* %39)
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %45 = call i32 @i40e_get_settings_link_down(%struct.i40e_hw* %42, %struct.ethtool_link_ksettings* %43, %struct.i40e_pf* %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.i40e_link_status*, %struct.i40e_link_status** %8, align 8
  %48 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I40E_AQ_AN_COMPLETED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %127 [
    i32 133, label %66
    i32 132, label %87
    i32 130, label %100
    i32 131, label %100
    i32 129, label %113
    i32 128, label %126
  ]

66:                                               ; preds = %57
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %68 = load i32, i32* @supported, align 4
  %69 = load i32, i32* @Autoneg, align 4
  %70 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %67, i32 %68, i32 %69)
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %72 = load i32, i32* @supported, align 4
  %73 = load i32, i32* @Backplane, align 4
  %74 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %71, i32 %72, i32 %73)
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %76 = load i32, i32* @advertising, align 4
  %77 = load i32, i32* @Autoneg, align 4
  %78 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %75, i32 %76, i32 %77)
  %79 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %80 = load i32, i32* @advertising, align 4
  %81 = load i32, i32* @Backplane, align 4
  %82 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @PORT_NONE, align 4
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  br label %132

87:                                               ; preds = %57
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %89 = load i32, i32* @supported, align 4
  %90 = load i32, i32* @TP, align 4
  %91 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %88, i32 %89, i32 %90)
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = load i32, i32* @advertising, align 4
  %94 = load i32, i32* @TP, align 4
  %95 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @PORT_TP, align 4
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  br label %132

100:                                              ; preds = %57, %57
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %102 = load i32, i32* @supported, align 4
  %103 = load i32, i32* @FIBRE, align 4
  %104 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %101, i32 %102, i32 %103)
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %106 = load i32, i32* @advertising, align 4
  %107 = load i32, i32* @FIBRE, align 4
  %108 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %105, i32 %106, i32 %107)
  %109 = load i32, i32* @PORT_DA, align 4
  %110 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %111 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  br label %132

113:                                              ; preds = %57
  %114 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %115 = load i32, i32* @supported, align 4
  %116 = load i32, i32* @FIBRE, align 4
  %117 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %114, i32 %115, i32 %116)
  %118 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %119 = load i32, i32* @advertising, align 4
  %120 = load i32, i32* @FIBRE, align 4
  %121 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %118, i32 %119, i32 %120)
  %122 = load i32, i32* @PORT_FIBRE, align 4
  %123 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %124 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %132

126:                                              ; preds = %57
  br label %127

127:                                              ; preds = %57, %126
  %128 = load i32, i32* @PORT_OTHER, align 4
  %129 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %130 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %113, %100, %87, %66
  %133 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %134 = load i32, i32* @supported, align 4
  %135 = load i32, i32* @Pause, align 4
  %136 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %133, i32 %134, i32 %135)
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %138 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %160 [
    i32 136, label %141
    i32 134, label %146
    i32 135, label %151
  ]

141:                                              ; preds = %132
  %142 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %143 = load i32, i32* @advertising, align 4
  %144 = load i32, i32* @Pause, align 4
  %145 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %142, i32 %143, i32 %144)
  br label %169

146:                                              ; preds = %132
  %147 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %148 = load i32, i32* @advertising, align 4
  %149 = load i32, i32* @Asym_Pause, align 4
  %150 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %147, i32 %148, i32 %149)
  br label %169

151:                                              ; preds = %132
  %152 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %153 = load i32, i32* @advertising, align 4
  %154 = load i32, i32* @Pause, align 4
  %155 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %152, i32 %153, i32 %154)
  %156 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %157 = load i32, i32* @advertising, align 4
  %158 = load i32, i32* @Asym_Pause, align 4
  %159 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %156, i32 %157, i32 %158)
  br label %169

160:                                              ; preds = %132
  %161 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %162 = load i32, i32* @advertising, align 4
  %163 = load i32, i32* @Pause, align 4
  %164 = call i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings* %161, i32 %162, i32 %163)
  %165 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %166 = load i32, i32* @advertising, align 4
  %167 = load i32, i32* @Asym_Pause, align 4
  %168 = call i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %160, %151, %146, %141
  ret i32 0
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @i40e_get_settings_link_up(%struct.i40e_hw*, %struct.ethtool_link_ksettings*, %struct.net_device*, %struct.i40e_pf*) #1

declare dso_local i32 @i40e_get_settings_link_down(%struct.i40e_hw*, %struct.ethtool_link_ksettings*, %struct.i40e_pf*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
