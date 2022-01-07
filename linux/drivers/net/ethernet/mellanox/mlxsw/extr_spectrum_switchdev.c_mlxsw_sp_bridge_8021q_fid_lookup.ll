; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_fid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_fid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32)* @mlxsw_sp_bridge_8021q_fid_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_8021q_fid_lookup(%struct.mlxsw_sp_bridge_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(i32 %8)
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %5, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021q_lookup(%struct.mlxsw_sp* %10, i32 %11)
  ret %struct.mlxsw_sp_fid* %12
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(i32) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021q_lookup(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
