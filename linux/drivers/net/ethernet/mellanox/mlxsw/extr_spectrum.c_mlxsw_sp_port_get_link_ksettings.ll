; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.mlxsw_sp* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_port_type_speed_ops* }
%struct.mlxsw_sp_port_type_speed_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.ethtool_link_ksettings.1*)*, i32 (%struct.mlxsw_sp.2*, i8*, i32*, i32*, i32*)*, i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.ethtool_link_ksettings.1 = type opaque
%struct.mlxsw_sp.2 = type opaque
%struct.mlxsw_sp.3 = type opaque

@MLXSW_REG_PTYS_LEN = common dso_local global i32 0, align 4
@ptys = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlxsw_sp_port_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca %struct.mlxsw_sp_port_type_speed_ops*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %18)
  store %struct.mlxsw_sp_port* %19, %struct.mlxsw_sp_port** %9, align 8
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 3
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %21, align 8
  store %struct.mlxsw_sp* %22, %struct.mlxsw_sp** %10, align 8
  %23 = load i32, i32* @MLXSW_REG_PTYS_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 1
  %29 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %28, align 8
  store %struct.mlxsw_sp_port_type_speed_ops* %29, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %15, align 4
  %34 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %34, i32 0, i32 2
  %36 = load i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)** %35, align 8
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %38 = bitcast %struct.mlxsw_sp* %37 to %struct.mlxsw_sp.3*
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %36(%struct.mlxsw_sp.3* %38, i8* %26, i32 %41, i32 0, i32 0)
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ptys, align 4
  %47 = call i32 @MLXSW_REG(i32 %46)
  %48 = call i32 @mlxsw_reg_query(i32 %45, i32 %47, i8* %26)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %105

53:                                               ; preds = %2
  %54 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %54, i32 0, i32 1
  %56 = load i32 (%struct.mlxsw_sp.2*, i8*, i32*, i32*, i32*)*, i32 (%struct.mlxsw_sp.2*, i8*, i32*, i32*, i32*)** %55, align 8
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %58 = bitcast %struct.mlxsw_sp* %57 to %struct.mlxsw_sp.2*
  %59 = call i32 %56(%struct.mlxsw_sp.2* %58, i8* %26, i32* %6, i32* %7, i32* %8)
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %67 = call i32 @mlxsw_sp_port_get_link_supported(%struct.mlxsw_sp* %60, i32 %61, i32 %65, %struct.ethtool_link_ksettings* %66)
  %68 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %76 = call i32 @mlxsw_sp_port_get_link_advertise(%struct.mlxsw_sp* %68, i32 %69, i32 %70, i32 %74, %struct.ethtool_link_ksettings* %75)
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %83

81:                                               ; preds = %53
  %82 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = call i32 @mlxsw_reg_ptys_connector_type_get(i8* %26)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mlxsw_sp_port_connector_port(i32 %89)
  %91 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.ethtool_link_ksettings.1*)*, i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.ethtool_link_ksettings.1*)** %95, align 8
  %97 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %98 = bitcast %struct.mlxsw_sp* %97 to %struct.mlxsw_sp.0*
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_carrier_ok(%struct.net_device* %99)
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %103 = bitcast %struct.ethtool_link_ksettings* %102 to %struct.ethtool_link_ksettings.1*
  %104 = call i32 %96(%struct.mlxsw_sp.0* %98, i32 %100, i32 %101, %struct.ethtool_link_ksettings.1* %103)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %105

105:                                              ; preds = %83, %51
  %106 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @mlxsw_sp_port_get_link_supported(%struct.mlxsw_sp*, i32, i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @mlxsw_sp_port_get_link_advertise(%struct.mlxsw_sp*, i32, i32, i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @mlxsw_reg_ptys_connector_type_get(i8*) #1

declare dso_local i32 @mlxsw_sp_port_connector_port(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
