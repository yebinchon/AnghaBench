; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { %struct.TYPE_5__*, i32, %struct.link_config }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)* }
%struct.link_config = type { i32, i32, i64, i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.link_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %6, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.port_info*, %struct.port_info** %13, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i64 %17
  store %struct.port_info* %18, %struct.port_info** %7, align 8
  %19 = load %struct.port_info*, %struct.port_info** %7, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 2
  store %struct.link_config* %20, %struct.link_config** %8, align 8
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AUTONEG_DISABLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.link_config*, %struct.link_config** %8, align 8
  %28 = getelementptr inbounds %struct.link_config, %struct.link_config* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.link_config*, %struct.link_config** %8, align 8
  %31 = getelementptr inbounds %struct.link_config, %struct.link_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @PAUSE_AUTONEG, align 4
  %38 = load %struct.link_config*, %struct.link_config** %8, align 8
  %39 = getelementptr inbounds %struct.link_config, %struct.link_config* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %116

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @PAUSE_RX, align 4
  %51 = load %struct.link_config*, %struct.link_config** %8, align 8
  %52 = getelementptr inbounds %struct.link_config, %struct.link_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @PAUSE_TX, align 4
  %62 = load %struct.link_config*, %struct.link_config** %8, align 8
  %63 = getelementptr inbounds %struct.link_config, %struct.link_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.link_config*, %struct.link_config** %8, align 8
  %68 = getelementptr inbounds %struct.link_config, %struct.link_config* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AUTONEG_ENABLE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i64 @netif_running(%struct.net_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.port_info*, %struct.port_info** %7, align 8
  %78 = getelementptr inbounds %struct.port_info, %struct.port_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.port_info*, %struct.port_info** %7, align 8
  %81 = getelementptr inbounds %struct.port_info, %struct.port_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load %struct.link_config*, %struct.link_config** %8, align 8
  %84 = call i32 @t1_link_start(i32 %79, %struct.TYPE_5__* %82, %struct.link_config* %83)
  br label %85

85:                                               ; preds = %76, %72
  br label %115

86:                                               ; preds = %66
  %87 = load %struct.link_config*, %struct.link_config** %8, align 8
  %88 = getelementptr inbounds %struct.link_config, %struct.link_config* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PAUSE_RX, align 4
  %91 = load i32, i32* @PAUSE_TX, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = load %struct.link_config*, %struct.link_config** %8, align 8
  %95 = getelementptr inbounds %struct.link_config, %struct.link_config* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i64 @netif_running(%struct.net_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %86
  %100 = load %struct.port_info*, %struct.port_info** %7, align 8
  %101 = getelementptr inbounds %struct.port_info, %struct.port_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %105, align 8
  %107 = load %struct.port_info*, %struct.port_info** %7, align 8
  %108 = getelementptr inbounds %struct.port_info, %struct.port_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load %struct.link_config*, %struct.link_config** %8, align 8
  %111 = getelementptr inbounds %struct.link_config, %struct.link_config* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %106(%struct.TYPE_5__* %109, i32 -1, i32 -1, i32 %112)
  br label %114

114:                                              ; preds = %99, %86
  br label %115

115:                                              ; preds = %114, %85
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %40
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t1_link_start(i32, %struct.TYPE_5__*, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
