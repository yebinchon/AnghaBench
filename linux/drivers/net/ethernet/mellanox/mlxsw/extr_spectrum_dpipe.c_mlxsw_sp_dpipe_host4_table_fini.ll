; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_host4_table_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_host4_table_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }

@MLXSW_SP_DPIPE_TABLE_NAME_HOST4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_dpipe_host4_table_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_dpipe_host4_table_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.devlink*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.devlink* @priv_to_devlink(i32 %6)
  store %struct.devlink* %7, %struct.devlink** %3, align 8
  %8 = load %struct.devlink*, %struct.devlink** %3, align 8
  %9 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_NAME_HOST4, align 4
  %10 = call i32 @devlink_dpipe_table_unregister(%struct.devlink* %8, i32 %9)
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_dpipe_table_unregister(%struct.devlink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
