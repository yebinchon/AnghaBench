; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_ipv6_entry_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_ipv6_entry_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i32 }
%struct.mlxsw_sp_nve_mc_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_nve_mc_record_ipv6_entry_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_mc_record_ipv6_entry_compare(%struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_entry* %1, %union.mlxsw_sp_l3addr* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  %6 = alloca %union.mlxsw_sp_l3addr*, align 8
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  store %struct.mlxsw_sp_nve_mc_entry* %1, %struct.mlxsw_sp_nve_mc_entry** %5, align 8
  store %union.mlxsw_sp_l3addr* %2, %union.mlxsw_sp_l3addr** %6, align 8
  %7 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %5, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %6, align 8
  %11 = bitcast %union.mlxsw_sp_l3addr* %10 to i32*
  %12 = call i32 @ipv6_addr_equal(i32* %9, i32* %11)
  ret i32 %12
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
