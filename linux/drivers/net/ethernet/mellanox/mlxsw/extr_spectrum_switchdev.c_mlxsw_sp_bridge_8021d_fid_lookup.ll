; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_fid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_fid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i64)* @mlxsw_sp_bridge_8021d_fid_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_8021d_fid_lookup(%struct.mlxsw_sp_bridge_device* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_fid*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_2__* %9)
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.mlxsw_sp_fid* null, %struct.mlxsw_sp_fid** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %16 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_lookup(%struct.mlxsw_sp* %15, i32 %20)
  store %struct.mlxsw_sp_fid* %21, %struct.mlxsw_sp_fid** %3, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  ret %struct.mlxsw_sp_fid* %23
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_2__*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_lookup(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
