; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_config_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_config_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_config = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_TNGCR_TYPE_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlxsw_sp_nve_config*)* @mlxsw_sp_nve_vxlan_config_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_vxlan_config_prepare(i8* %0, %struct.mlxsw_sp_nve_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlxsw_sp_nve_config*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mlxsw_sp_nve_config* %1, %struct.mlxsw_sp_nve_config** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @MLXSW_REG_TNGCR_TYPE_VXLAN, align 4
  %8 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlxsw_reg_tngcr_pack(i8* %6, i32 %7, i32 1, i32 %10)
  %12 = call i32 @get_random_bytes(i32* %5, i32 4)
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %13, 111
  %15 = add nsw i32 %14, 128
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mlxsw_reg_tngcr_nve_udp_sport_prefix_set(i8* %16, i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = call i32 @mlxsw_reg_tngcr_usipv4_set(i8* %19, i32 %24)
  ret void
}

declare dso_local i32 @mlxsw_reg_tngcr_pack(i8*, i32, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_udp_sport_prefix_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_usipv4_set(i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
