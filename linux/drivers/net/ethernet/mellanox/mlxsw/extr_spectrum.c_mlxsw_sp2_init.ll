; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_bus_info = type { i32 }
%struct.mlxsw_sp = type { i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@mlxsw_sp2_kvdl_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_act_afa_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_afk_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_mr_tcam_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_acl_tcam_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_nve_ops_arr = common dso_local global i32 0, align 4
@mlxsw_sp2_mac_mask = common dso_local global i32 0, align 4
@mlxsw_sp2_rif_ops_arr = common dso_local global i32 0, align 4
@mlxsw_sp2_sb_vals = common dso_local global i32 0, align 4
@mlxsw_sp2_port_type_speed_ops = common dso_local global i32 0, align 4
@mlxsw_sp2_ptp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_bus_info*)* @mlxsw_sp2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_init(%struct.mlxsw_core* %0, %struct.mlxsw_bus_info* %1) #0 {
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.mlxsw_bus_info*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  store %struct.mlxsw_bus_info* %1, %struct.mlxsw_bus_info** %4, align 8
  %6 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %7 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %6)
  store %struct.mlxsw_sp* %7, %struct.mlxsw_sp** %5, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 10
  store i32* @mlxsw_sp2_kvdl_ops, i32** %9, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 9
  store i32* @mlxsw_sp2_act_afa_ops, i32** %11, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 8
  store i32* @mlxsw_sp2_afk_ops, i32** %13, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 7
  store i32* @mlxsw_sp2_mr_tcam_ops, i32** %15, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 6
  store i32* @mlxsw_sp2_acl_tcam_ops, i32** %17, align 8
  %18 = load i32, i32* @mlxsw_sp2_nve_ops_arr, align 4
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @mlxsw_sp2_mac_mask, align 4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @mlxsw_sp2_rif_ops_arr, align 4
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 2
  store i32* @mlxsw_sp2_sb_vals, i32** %28, align 8
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %29, i32 0, i32 1
  store i32* @mlxsw_sp2_port_type_speed_ops, i32** %30, align 8
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  store i32* @mlxsw_sp2_ptp_ops, i32** %32, align 8
  %33 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %34 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %4, align 8
  %35 = call i32 @mlxsw_sp_init(%struct.mlxsw_core* %33, %struct.mlxsw_bus_info* %34)
  ret i32 %35
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_init(%struct.mlxsw_core*, %struct.mlxsw_bus_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
