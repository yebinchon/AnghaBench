; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, %struct.mlxsw_sp* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_port_type_speed_ops* }
%struct.mlxsw_sp_port_type_speed_ops = type { i32 (%struct.mlxsw_sp.0*, i32, %struct.ethtool_link_ksettings.1*)*, i32 (%struct.mlxsw_sp.2*, i32, i32)*, i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.4*, i8*, i32*, i32*, i32*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.ethtool_link_ksettings.1 = type opaque
%struct.mlxsw_sp.2 = type opaque
%struct.mlxsw_sp.3 = type opaque
%struct.mlxsw_sp.4 = type opaque

@MLXSW_REG_PTYS_LEN = common dso_local global i32 0, align 4
@ptys = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No supported speed requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlxsw_sp_port_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_port_type_speed_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %16)
  store %struct.mlxsw_sp_port* %17, %struct.mlxsw_sp_port** %6, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 3
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %19, align 8
  store %struct.mlxsw_sp* %20, %struct.mlxsw_sp** %7, align 8
  %21 = load i32, i32* @MLXSW_REG_PTYS_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 1
  %27 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %26, align 8
  store %struct.mlxsw_sp_port_type_speed_ops* %27, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %28 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %28, i32 0, i32 2
  %30 = load i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)** %29, align 8
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %32 = bitcast %struct.mlxsw_sp* %31 to %struct.mlxsw_sp.3*
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %30(%struct.mlxsw_sp.3* %32, i8* %24, i32 %35, i32 0, i32 0)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ptys, align 4
  %41 = call i32 @MLXSW_REG(i32 %40)
  %42 = call i32 @mlxsw_reg_query(i32 %39, i32 %41, i8* %24)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %139

47:                                               ; preds = %2
  %48 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %48, i32 0, i32 3
  %50 = load i32 (%struct.mlxsw_sp.4*, i8*, i32*, i32*, i32*)*, i32 (%struct.mlxsw_sp.4*, i8*, i32*, i32*, i32*)** %49, align 8
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %52 = bitcast %struct.mlxsw_sp* %51 to %struct.mlxsw_sp.4*
  %53 = call i32 %50(%struct.mlxsw_sp.4* %52, i8* %24, i32* %11, i32* null, i32* null)
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AUTONEG_ENABLE, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %47
  %64 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.mlxsw_sp.0*, i32, %struct.ethtool_link_ksettings.1*)*, i32 (%struct.mlxsw_sp.0*, i32, %struct.ethtool_link_ksettings.1*)** %65, align 8
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %68 = bitcast %struct.mlxsw_sp* %67 to %struct.mlxsw_sp.0*
  %69 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = bitcast %struct.ethtool_link_ksettings* %73 to %struct.ethtool_link_ksettings.1*
  %75 = call i32 %66(%struct.mlxsw_sp.0* %68, i32 %72, %struct.ethtool_link_ksettings.1* %74)
  br label %91

76:                                               ; preds = %47
  %77 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %77, i32 0, i32 1
  %79 = load i32 (%struct.mlxsw_sp.2*, i32, i32)*, i32 (%struct.mlxsw_sp.2*, i32, i32)** %78, align 8
  %80 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %81 = bitcast %struct.mlxsw_sp* %80 to %struct.mlxsw_sp.2*
  %82 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %79(%struct.mlxsw_sp.2* %81, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %76, %63
  %92 = phi i32 [ %75, %63 ], [ %90, %76 ]
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netdev_err(%struct.net_device* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %139

103:                                              ; preds = %91
  %104 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %8, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %104, i32 0, i32 2
  %106 = load i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.3*, i8*, i32, i32, i32)** %105, align 8
  %107 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %108 = bitcast %struct.mlxsw_sp* %107 to %struct.mlxsw_sp.3*
  %109 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %110 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 %106(%struct.mlxsw_sp.3* %108, i8* %24, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ptys, align 4
  %119 = call i32 @MLXSW_REG(i32 %118)
  %120 = call i32 @mlxsw_reg_write(i32 %117, i32 %119, i8* %24)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %139

125:                                              ; preds = %103
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %128 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = call i32 @netif_running(%struct.net_device* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %139

134:                                              ; preds = %125
  %135 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %136 = call i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port* %135, i32 0)
  %137 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %138 = call i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port* %137, i32 1)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %139

139:                                              ; preds = %134, %133, %123, %98, %45
  %140 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
