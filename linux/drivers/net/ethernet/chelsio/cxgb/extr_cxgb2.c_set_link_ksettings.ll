; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { i32, i32, %struct.link_config }
%struct.link_config = type { i32, i64, i64, i32, i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
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
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.port_info*, %struct.port_info** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i64 %20
  store %struct.port_info* %21, %struct.port_info** %7, align 8
  %22 = load %struct.port_info*, %struct.port_info** %7, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 2
  store %struct.link_config* %23, %struct.link_config** %8, align 8
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %9, i32 %27)
  %29 = load %struct.link_config*, %struct.link_config** %8, align 8
  %30 = getelementptr inbounds %struct.link_config, %struct.link_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %139

38:                                               ; preds = %2
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AUTONEG_DISABLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @speed_duplex_to_caps(i64 %50, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.link_config*, %struct.link_config** %8, align 8
  %57 = getelementptr inbounds %struct.link_config, %struct.link_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @SPEED_1000, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %45
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %139

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.link_config*, %struct.link_config** %8, align 8
  %72 = getelementptr inbounds %struct.link_config, %struct.link_config* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.link_config*, %struct.link_config** %8, align 8
  %78 = getelementptr inbounds %struct.link_config, %struct.link_config* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.link_config*, %struct.link_config** %8, align 8
  %80 = getelementptr inbounds %struct.link_config, %struct.link_config* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  br label %119

81:                                               ; preds = %38
  %82 = load i64, i64* @ADVERTISED_MASK, align 8
  %83 = load i64, i64* %9, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %86, 1
  %88 = and i64 %85, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.link_config*, %struct.link_config** %8, align 8
  %92 = getelementptr inbounds %struct.link_config, %struct.link_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.link_config*, %struct.link_config** %8, align 8
  %97 = getelementptr inbounds %struct.link_config, %struct.link_config* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = and i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %139

107:                                              ; preds = %95
  %108 = load i64, i64* @SPEED_INVALID, align 8
  %109 = load %struct.link_config*, %struct.link_config** %8, align 8
  %110 = getelementptr inbounds %struct.link_config, %struct.link_config* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @DUPLEX_INVALID, align 4
  %112 = load %struct.link_config*, %struct.link_config** %8, align 8
  %113 = getelementptr inbounds %struct.link_config, %struct.link_config* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %116 = or i64 %114, %115
  %117 = load %struct.link_config*, %struct.link_config** %8, align 8
  %118 = getelementptr inbounds %struct.link_config, %struct.link_config* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %107, %69
  %120 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.link_config*, %struct.link_config** %8, align 8
  %125 = getelementptr inbounds %struct.link_config, %struct.link_config* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = call i64 @netif_running(%struct.net_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %119
  %130 = load %struct.port_info*, %struct.port_info** %7, align 8
  %131 = getelementptr inbounds %struct.port_info, %struct.port_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.port_info*, %struct.port_info** %7, align 8
  %134 = getelementptr inbounds %struct.port_info, %struct.port_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.link_config*, %struct.link_config** %8, align 8
  %137 = call i32 @t1_link_start(i32 %132, i32 %135, %struct.link_config* %136)
  br label %138

138:                                              ; preds = %129, %119
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %104, %66, %35
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i32 @speed_duplex_to_caps(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t1_link_start(i32, i32, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
