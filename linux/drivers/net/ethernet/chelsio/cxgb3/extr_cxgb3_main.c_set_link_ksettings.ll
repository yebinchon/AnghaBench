; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.port_info = type { i32, i32, %struct.link_config }
%struct.link_config = type { i32, i64, i64, i32, i64 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ADVERTISED_MASK = common dso_local global i64 0, align 8
@SPEED_INVALID = common dso_local global i64 0, align 8
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.link_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.port_info* @netdev_priv(%struct.net_device* %13)
  store %struct.port_info* %14, %struct.port_info** %6, align 8
  %15 = load %struct.port_info*, %struct.port_info** %6, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 2
  store %struct.link_config* %16, %struct.link_config** %7, align 8
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %8, i32 %20)
  %22 = load %struct.link_config*, %struct.link_config** %7, align 8
  %23 = getelementptr inbounds %struct.link_config, %struct.link_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %2
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AUTONEG_DISABLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @speed_duplex_to_caps(i64 %40, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.link_config*, %struct.link_config** %7, align 8
  %47 = getelementptr inbounds %struct.link_config, %struct.link_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %145

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %145

57:                                               ; preds = %2
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AUTONEG_DISABLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %57
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @speed_duplex_to_caps(i64 %69, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.link_config*, %struct.link_config** %7, align 8
  %76 = getelementptr inbounds %struct.link_config, %struct.link_config* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @SPEED_1000, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %64
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %145

88:                                               ; preds = %81
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.link_config*, %struct.link_config** %7, align 8
  %91 = getelementptr inbounds %struct.link_config, %struct.link_config* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.link_config*, %struct.link_config** %7, align 8
  %97 = getelementptr inbounds %struct.link_config, %struct.link_config* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.link_config*, %struct.link_config** %7, align 8
  %99 = getelementptr inbounds %struct.link_config, %struct.link_config* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %127

100:                                              ; preds = %57
  %101 = load i64, i64* @ADVERTISED_MASK, align 8
  %102 = load i64, i64* %8, align 8
  %103 = and i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load %struct.link_config*, %struct.link_config** %7, align 8
  %105 = getelementptr inbounds %struct.link_config, %struct.link_config* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = and i64 %108, %107
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %145

115:                                              ; preds = %100
  %116 = load i64, i64* @SPEED_INVALID, align 8
  %117 = load %struct.link_config*, %struct.link_config** %7, align 8
  %118 = getelementptr inbounds %struct.link_config, %struct.link_config* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @DUPLEX_INVALID, align 4
  %120 = load %struct.link_config*, %struct.link_config** %7, align 8
  %121 = getelementptr inbounds %struct.link_config, %struct.link_config* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %124 = or i64 %122, %123
  %125 = load %struct.link_config*, %struct.link_config** %7, align 8
  %126 = getelementptr inbounds %struct.link_config, %struct.link_config* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %115, %88
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.link_config*, %struct.link_config** %7, align 8
  %133 = getelementptr inbounds %struct.link_config, %struct.link_config* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = call i64 @netif_running(%struct.net_device* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load %struct.port_info*, %struct.port_info** %6, align 8
  %139 = getelementptr inbounds %struct.port_info, %struct.port_info* %138, i32 0, i32 1
  %140 = load %struct.port_info*, %struct.port_info** %6, align 8
  %141 = getelementptr inbounds %struct.port_info, %struct.port_info* %140, i32 0, i32 0
  %142 = load %struct.link_config*, %struct.link_config** %7, align 8
  %143 = call i32 @t3_link_start(i32* %139, i32* %141, %struct.link_config* %142)
  br label %144

144:                                              ; preds = %137, %127
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %112, %85, %54, %52
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i32 @speed_duplex_to_caps(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t3_link_start(i32*, i32*, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
