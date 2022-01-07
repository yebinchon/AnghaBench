; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_PTYS_LEN = common dso_local global i32 0, align 4
@ptys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get proto\00", align 1
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlxsw_sx_port_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlxsw_sx_port*, align 8
  %7 = alloca %struct.mlxsw_sx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device* %18)
  store %struct.mlxsw_sx_port* %19, %struct.mlxsw_sx_port** %6, align 8
  %20 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %20, i32 0, i32 1
  %22 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %21, align 8
  store %struct.mlxsw_sx* %22, %struct.mlxsw_sx** %7, align 8
  %23 = load i32, i32* @MLXSW_REG_PTYS_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlxsw_reg_ptys_eth_pack(i8* %26, i32 %29, i32 0, i32 0)
  %31 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ptys, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_query(i32 %33, i32 %35, i8* %26)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netdev_err(%struct.net_device* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %94

43:                                               ; preds = %2
  %44 = call i32 @mlxsw_reg_ptys_eth_unpack(i8* %26, i32* %10, i32* %11, i32* %12)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mlxsw_sx_from_ptys_supported_port(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @mlxsw_sx_from_ptys_supported_link(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @SUPPORTED_Pause, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @mlxsw_sx_from_ptys_advert_link(i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @netif_carrier_ok(%struct.net_device* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %60 = call i32 @mlxsw_sx_from_ptys_speed_duplex(i32 %57, i32 %58, %struct.ethtool_link_ksettings* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %12, align 4
  br label %67

65:                                               ; preds = %43
  %66 = load i32, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlxsw_sx_port_connector_port(i32 %69)
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @mlxsw_sx_from_ptys_advert_link(i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %79, i32 %80)
  %82 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %85, i32 %86)
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %91, i32 %92)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %94

94:                                               ; preds = %67, %39
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_ptys_eth_pack(i8*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_reg_ptys_eth_unpack(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @mlxsw_sx_from_ptys_supported_port(i32) #1

declare dso_local i32 @mlxsw_sx_from_ptys_supported_link(i32) #1

declare dso_local i32 @mlxsw_sx_from_ptys_advert_link(i32) #1

declare dso_local i32 @mlxsw_sx_from_ptys_speed_duplex(i32, i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sx_port_connector_port(i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
