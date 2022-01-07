; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae_handle*, i32, i32)* }

@ESRCH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Not supported!\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @hns_nic_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ESRCH, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %195

17:                                               ; preds = %2
  %18 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %19 = icmp ne %struct.hns_nic_priv* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %22 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %21, i32 0, i32 0
  %23 = load %struct.hnae_handle*, %struct.hnae_handle** %22, align 8
  %24 = icmp ne %struct.hnae_handle* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %27 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %26, i32 0, i32 0
  %28 = load %struct.hnae_handle*, %struct.hnae_handle** %27, align 8
  %29 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %34 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %33, i32 0, i32 0
  %35 = load %struct.hnae_handle*, %struct.hnae_handle** %34, align 8
  %36 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32, %25, %20, %17
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %195

44:                                               ; preds = %32
  %45 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %46 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %45, i32 0, i32 0
  %47 = load %struct.hnae_handle*, %struct.hnae_handle** %46, align 8
  store %struct.hnae_handle* %47, %struct.hnae_handle** %7, align 8
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %53 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %44
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AUTONEG_ENABLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SPEED_10000, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DUPLEX_FULL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %64, %57
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %195

78:                                               ; preds = %68
  br label %161

79:                                               ; preds = %44
  %80 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %81 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %155

85:                                               ; preds = %79
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AUTONEG_ENABLE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %195

100:                                              ; preds = %90, %85
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @SPEED_1000, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DUPLEX_HALF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %195

114:                                              ; preds = %104, %100
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %124 = call i32 @phy_ethtool_ksettings_set(i64 %122, %struct.ethtool_link_ksettings* %123)
  store i32 %124, i32* %3, align 4
  br label %195

125:                                              ; preds = %114
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @SPEED_10, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @SPEED_100, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @SPEED_1000, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %151, label %137

137:                                              ; preds = %133, %129, %125
  %138 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %139 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DUPLEX_HALF, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  %145 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DUPLEX_FULL, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144, %133
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %195

154:                                              ; preds = %144, %137
  br label %160

155:                                              ; preds = %79
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = call i32 @netdev_err(%struct.net_device* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @ENOTSUPP, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %195

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %78
  %162 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %163 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %167, align 8
  %169 = icmp ne i32 (%struct.hnae_handle*, i32, i32)* %168, null
  br i1 %169, label %170, label %190

170:                                              ; preds = %161
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = call i32 @netif_carrier_off(%struct.net_device* %171)
  %173 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %174 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %173, i32 0, i32 1
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %178, align 8
  %180 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = trunc i64 %181 to i32
  %183 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %179(%struct.hnae_handle* %180, i32 %182, i32 %186)
  %188 = load %struct.net_device*, %struct.net_device** %4, align 8
  %189 = call i32 @netif_carrier_on(%struct.net_device* %188)
  store i32 0, i32* %3, align 4
  br label %195

190:                                              ; preds = %161
  %191 = load %struct.net_device*, %struct.net_device** %4, align 8
  %192 = call i32 @netdev_err(%struct.net_device* %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %193 = load i32, i32* @ENOTSUPP, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %190, %170, %155, %151, %119, %111, %97, %75, %41, %14
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_ksettings_set(i64, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
