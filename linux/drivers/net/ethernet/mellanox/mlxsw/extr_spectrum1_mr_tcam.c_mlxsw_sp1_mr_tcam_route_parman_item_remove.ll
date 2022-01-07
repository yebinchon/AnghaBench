; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_parman_item_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_parman_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam = type { i32 }
%struct.mlxsw_sp1_mr_tcam_route = type { i32, i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_sp1_mr_tcam_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp_mr_route_key*)* @mlxsw_sp1_mr_tcam_route_parman_item_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_mr_tcam_route_parman_item_remove(%struct.mlxsw_sp1_mr_tcam* %0, %struct.mlxsw_sp1_mr_tcam_route* %1, %struct.mlxsw_sp_mr_route_key* %2) #0 {
  %4 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %5 = alloca %struct.mlxsw_sp1_mr_tcam_route*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %7 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  store %struct.mlxsw_sp1_mr_tcam* %0, %struct.mlxsw_sp1_mr_tcam** %4, align 8
  store %struct.mlxsw_sp1_mr_tcam_route* %1, %struct.mlxsw_sp1_mr_tcam_route** %5, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %8 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %4, align 8
  %9 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %6, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlxsw_sp1_mr_tcam_region* @mlxsw_sp1_mr_tcam_protocol_region(%struct.mlxsw_sp1_mr_tcam* %8, i32 %11)
  store %struct.mlxsw_sp1_mr_tcam_region* %12, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %13 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %19, i32 0, i32 0
  %21 = call i32 @parman_item_remove(i32 %15, i32 %18, i32* %20)
  ret void
}

declare dso_local %struct.mlxsw_sp1_mr_tcam_region* @mlxsw_sp1_mr_tcam_protocol_region(%struct.mlxsw_sp1_mr_tcam*, i32) #1

declare dso_local i32 @parman_item_remove(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
