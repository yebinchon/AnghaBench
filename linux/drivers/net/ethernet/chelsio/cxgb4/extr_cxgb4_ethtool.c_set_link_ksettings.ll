; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__, %struct.ethtool_link_settings }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_link_settings = type { i64, i64, i32 }
%struct.port_info = type { i32, %struct.TYPE_4__*, %struct.link_config }
%struct.TYPE_4__ = type { i32 }
%struct.link_config = type { i32, i32, i32, i64 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.link_config*, align 8
  %8 = alloca %struct.ethtool_link_settings*, align 8
  %9 = alloca %struct.link_config, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev_priv(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %6, align 8
  %14 = load %struct.port_info*, %struct.port_info** %6, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 2
  store %struct.link_config* %15, %struct.link_config** %7, align 8
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 1
  store %struct.ethtool_link_settings* %17, %struct.ethtool_link_settings** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DUPLEX_FULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %2
  %27 = load %struct.link_config*, %struct.link_config** %7, align 8
  %28 = bitcast %struct.link_config* %9 to i8*
  %29 = bitcast %struct.link_config* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = load %struct.link_config*, %struct.link_config** %7, align 8
  %31 = getelementptr inbounds %struct.link_config, %struct.link_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AUTONEG_DISABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36, %26
  %43 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @speed_to_fw_caps(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.link_config*, %struct.link_config** %7, align 8
  %48 = getelementptr inbounds %struct.link_config, %struct.link_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %113

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.link_config*, %struct.link_config** %7, align 8
  %59 = getelementptr inbounds %struct.link_config, %struct.link_config* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.link_config*, %struct.link_config** %7, align 8
  %62 = getelementptr inbounds %struct.link_config, %struct.link_config* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %86

63:                                               ; preds = %36
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @lmm_to_fw_caps(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.link_config*, %struct.link_config** %7, align 8
  %70 = getelementptr inbounds %struct.link_config, %struct.link_config* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %113

78:                                               ; preds = %63
  %79 = load %struct.link_config*, %struct.link_config** %7, align 8
  %80 = getelementptr inbounds %struct.link_config, %struct.link_config* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.link_config*, %struct.link_config** %7, align 8
  %85 = getelementptr inbounds %struct.link_config, %struct.link_config* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %56
  %87 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %8, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.link_config*, %struct.link_config** %7, align 8
  %91 = getelementptr inbounds %struct.link_config, %struct.link_config* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.port_info*, %struct.port_info** %6, align 8
  %93 = getelementptr inbounds %struct.port_info, %struct.port_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.port_info*, %struct.port_info** %6, align 8
  %96 = getelementptr inbounds %struct.port_info, %struct.port_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.port_info*, %struct.port_info** %6, align 8
  %101 = getelementptr inbounds %struct.port_info, %struct.port_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.link_config*, %struct.link_config** %7, align 8
  %104 = call i32 @t4_link_l1cfg(%struct.TYPE_4__* %94, i32 %99, i32 %102, %struct.link_config* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %86
  %108 = load %struct.link_config*, %struct.link_config** %7, align 8
  %109 = bitcast %struct.link_config* %108 to i8*
  %110 = bitcast %struct.link_config* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 24, i1 false)
  br label %111

111:                                              ; preds = %107, %86
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %75, %53, %23
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @speed_to_fw_caps(i32) #1

declare dso_local i32 @lmm_to_fw_caps(i32) #1

declare dso_local i32 @t4_link_l1cfg(%struct.TYPE_4__*, i32, i32, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
