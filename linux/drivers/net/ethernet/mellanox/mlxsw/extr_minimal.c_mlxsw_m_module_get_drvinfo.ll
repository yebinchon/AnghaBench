; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_module_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_module_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.mlxsw_m_port = type { %struct.mlxsw_m* }
%struct.mlxsw_m = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @mlxsw_m_module_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_m_module_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.mlxsw_m_port*, align 8
  %6 = alloca %struct.mlxsw_m*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlxsw_m_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mlxsw_m_port* %8, %struct.mlxsw_m_port** %5, align 8
  %9 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_m*, %struct.mlxsw_m** %10, align 8
  store %struct.mlxsw_m* %11, %struct.mlxsw_m** %6, align 8
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlcpy(i32 %14, i32 %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %35, i32 %41)
  %43 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlcpy(i32 %45, i32 %50, i32 4)
  ret void
}

declare dso_local %struct.mlxsw_m_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
