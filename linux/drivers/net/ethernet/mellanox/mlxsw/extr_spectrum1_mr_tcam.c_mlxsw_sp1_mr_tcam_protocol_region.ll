; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_protocol_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_protocol_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam_region = type { i32 }
%struct.mlxsw_sp1_mr_tcam = type { %struct.mlxsw_sp1_mr_tcam_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp1_mr_tcam_region* (%struct.mlxsw_sp1_mr_tcam*, i32)* @mlxsw_sp1_mr_tcam_protocol_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp1_mr_tcam_region* @mlxsw_sp1_mr_tcam_protocol_region(%struct.mlxsw_sp1_mr_tcam* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp1_mr_tcam* %0, %struct.mlxsw_sp1_mr_tcam** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam, %struct.mlxsw_sp1_mr_tcam* %5, i32 0, i32 0
  %7 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %7, i64 %9
  ret %struct.mlxsw_sp1_mr_tcam_region* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
