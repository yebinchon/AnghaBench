; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.aq_nic_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.aq_nic_cfg_s*)* }
%struct.aq_nic_cfg_s = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @aq_ndev_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ndev_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aq_nic_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aq_nic_cfg_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %26)
  store %struct.aq_nic_s* %27, %struct.aq_nic_s** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %29 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %28)
  store %struct.aq_nic_cfg_s* %29, %struct.aq_nic_cfg_s** %9, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %2
  %35 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %36 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %45 = call i32 @aq_clear_rxnfc_all_rules(%struct.aq_nic_s* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %161

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %52
  %58 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %59 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %68 = call i32 @aq_filters_vlan_offload_off(%struct.aq_nic_s* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %161

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %78 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %80 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NETIF_F_LRO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %75
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @NETIF_F_LRO, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %92 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %99 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 1, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %87
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %103 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %4, align 4
  %108 = xor i32 %106, %107
  %109 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %101
  %113 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %114 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (i32, %struct.aq_nic_cfg_s*)*, i32 (i32, %struct.aq_nic_cfg_s*)** %116, align 8
  %118 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %119 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %122 = call i32 %117(i32 %120, %struct.aq_nic_cfg_s* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %161

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %101
  %129 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %130 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %137 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %140 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %147 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  store i32 1, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %138
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = call i64 @netif_running(%struct.net_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = call i32 @aq_ndev_close(%struct.net_device* %156)
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = call i32 @aq_ndev_open(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %155, %151, %148
  br label %161

161:                                              ; preds = %160, %126, %72, %49
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_clear_rxnfc_all_rules(%struct.aq_nic_s*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aq_filters_vlan_offload_off(%struct.aq_nic_s*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @aq_ndev_close(%struct.net_device*) #1

declare dso_local i32 @aq_ndev_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
