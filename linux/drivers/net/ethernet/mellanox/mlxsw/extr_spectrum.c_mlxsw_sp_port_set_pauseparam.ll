; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.mlxsw_sp_port = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"PFC already enabled on port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"PAUSE frames autonegotiation isn't supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to configure port's headroom\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set PAUSE parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @mlxsw_sp_port_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mlxsw_sp_port* %10, %struct.mlxsw_sp_port** %6, align 8
  %11 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %28, %20
  %42 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %41
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %52, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i32 @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %96

64:                                               ; preds = %51
  %65 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %66 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %67 = call i32 @mlxsw_sp_port_pause_set(%struct.mlxsw_sp_port* %65, %struct.ethtool_pauseparam* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @netdev_err(%struct.net_device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %86

73:                                               ; preds = %64
  %74 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %96

86:                                               ; preds = %70
  %87 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %88 = call i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port* %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %89, i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %86, %73, %60, %46, %36
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_pause_set(%struct.mlxsw_sp_port*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
