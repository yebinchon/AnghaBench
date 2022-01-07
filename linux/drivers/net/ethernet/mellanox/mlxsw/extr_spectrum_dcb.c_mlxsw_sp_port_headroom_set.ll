; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_headroom_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_headroom_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, %struct.ieee_ets* }
%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to configure port's headroom\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set PG-priority mapping\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to remove ununsed PGs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.ieee_ets*)* @mlxsw_sp_port_headroom_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee_ets*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %11 = call i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.ieee_ets*, %struct.ieee_ets** %14, align 8
  store %struct.ieee_ets* %15, %struct.ieee_ets** %7, align 8
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %24 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %19, i32 %22, i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %2
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %40 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %41 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlxsw_sp_port_pg_prio_map(%struct.mlxsw_sp_port* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %64

49:                                               ; preds = %38
  %50 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %51 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %52 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %55 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlxsw_sp_port_pg_destroy(%struct.mlxsw_sp_port* %50, i32 %53, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = call i32 @netdev_warn(%struct.net_device* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %49
  store i32 0, i32* %3, align 4
  br label %74

64:                                               ; preds = %46
  %65 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %66 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %67 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %70 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlxsw_sp_port_pg_destroy(%struct.mlxsw_sp_port* %65, i32 %68, i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %63, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_sp_port_pg_prio_map(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_pg_destroy(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
