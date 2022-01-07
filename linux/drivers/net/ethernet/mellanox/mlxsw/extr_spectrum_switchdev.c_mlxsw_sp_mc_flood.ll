; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_flood.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_flood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_port = type { i32, i32, %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_bridge_device = type { i64 }

@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_bridge_port*)* @mlxsw_sp_mc_flood to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mc_flood(%struct.mlxsw_sp_bridge_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %3 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  store %struct.mlxsw_sp_bridge_port* %0, %struct.mlxsw_sp_bridge_port** %2, align 8
  %4 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %4, i32 0, i32 2
  %6 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  store %struct.mlxsw_sp_bridge_device* %6, %struct.mlxsw_sp_bridge_device** %3, align 8
  %7 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %2, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %20 = and i32 %18, %19
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i32 [ %14, %11 ], [ %20, %15 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
