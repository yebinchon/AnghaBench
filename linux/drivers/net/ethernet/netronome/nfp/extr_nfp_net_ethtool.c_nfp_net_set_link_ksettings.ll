; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nfp_eth_table_port = type { i32, i32 }
%struct.nfp_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_nsp = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"Changing settings not allowed on an active interface. It may cause the port to be disabled until driver reload.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@NFP_ANEG_AUTO = common dso_local global i32 0, align 4
@NFP_ANEG_DISABLED = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @nfp_net_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.nfp_eth_table_port*, align 8
  %7 = alloca %struct.nfp_port*, align 8
  %8 = alloca %struct.nfp_nsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %11)
  store %struct.nfp_port* %12, %struct.nfp_port** %7, align 8
  %13 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %14 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %13)
  store %struct.nfp_eth_table_port* %14, %struct.nfp_eth_table_port** %6, align 8
  %15 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %16 = icmp ne %struct.nfp_eth_table_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_warn(%struct.net_device* %25, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %100

29:                                               ; preds = %20
  %30 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %31 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nfp_nsp* @nfp_eth_config_start(i32 %34, i32 %37)
  store %struct.nfp_nsp* %38, %struct.nfp_nsp** %8, align 8
  %39 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %40 = call i64 @IS_ERR(%struct.nfp_nsp* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %44 = call i32 @PTR_ERR(%struct.nfp_nsp* %43)
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %29
  %46 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_ENABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @NFP_ANEG_AUTO, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @NFP_ANEG_DISABLED, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @__nfp_eth_set_aneg(%struct.nfp_nsp* %46, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %96

63:                                               ; preds = %57
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SPEED_UNKNOWN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %76 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %74, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @__nfp_eth_set_speed(%struct.nfp_nsp* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %96

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %88 = call i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %100

92:                                               ; preds = %86
  %93 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %94 = call i32 @nfp_net_refresh_port_table(%struct.nfp_port* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %100

96:                                               ; preds = %84, %62
  %97 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %98 = call i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %92, %91, %42, %24, %17
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local %struct.nfp_nsp* @nfp_eth_config_start(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @__nfp_eth_set_aneg(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @__nfp_eth_set_speed(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @nfp_eth_config_commit_end(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_net_refresh_port_table(%struct.nfp_port*) #1

declare dso_local i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
