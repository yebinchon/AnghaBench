; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_dpipe_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.devlink*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.devlink* @priv_to_devlink(i32 %6)
  store %struct.devlink* %7, %struct.devlink** %3, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %9 = call i32 @mlxsw_sp_dpipe_adj_table_fini(%struct.mlxsw_sp* %8)
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %11 = call i32 @mlxsw_sp_dpipe_host6_table_fini(%struct.mlxsw_sp* %10)
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %13 = call i32 @mlxsw_sp_dpipe_host4_table_fini(%struct.mlxsw_sp* %12)
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %15 = call i32 @mlxsw_sp_dpipe_erif_table_fini(%struct.mlxsw_sp* %14)
  %16 = load %struct.devlink*, %struct.devlink** %3, align 8
  %17 = call i32 @devlink_dpipe_headers_unregister(%struct.devlink* %16)
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @mlxsw_sp_dpipe_adj_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host6_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host4_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_erif_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @devlink_dpipe_headers_unregister(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
