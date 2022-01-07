; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_ip_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_ip_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nve_mc_list = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.mlxsw_sp_nve_mc_record = type { i32 }
%struct.mlxsw_sp_nve_mc_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_nve_mc_list_ip_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_mc_list_ip_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_mc_list* %1, i32 %2, %union.mlxsw_sp_l3addr* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.mlxsw_sp_l3addr*, align 8
  %9 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %10 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_nve_mc_list* %1, %struct.mlxsw_sp_nve_mc_list** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.mlxsw_sp_l3addr* %3, %union.mlxsw_sp_l3addr** %8, align 8
  %11 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %8, align 8
  %14 = call %struct.mlxsw_sp_nve_mc_record* @mlxsw_sp_nve_mc_record_find(%struct.mlxsw_sp_nve_mc_list* %11, i32 %12, %union.mlxsw_sp_l3addr* %13, %struct.mlxsw_sp_nve_mc_entry** %10)
  store %struct.mlxsw_sp_nve_mc_record* %14, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %15 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %16 = icmp ne %struct.mlxsw_sp_nve_mc_record* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %20 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %10, align 8
  %21 = call i32 @mlxsw_sp_nve_mc_record_entry_del(%struct.mlxsw_sp_nve_mc_record* %19, %struct.mlxsw_sp_nve_mc_entry* %20)
  %22 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %23 = call i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record* %22)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.mlxsw_sp_nve_mc_record* @mlxsw_sp_nve_mc_record_find(%struct.mlxsw_sp_nve_mc_list*, i32, %union.mlxsw_sp_l3addr*, %struct.mlxsw_sp_nve_mc_entry**) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_entry_del(%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
