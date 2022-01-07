; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam = type { %struct.mlxsw_sp1_mr_tcam_region* }
%struct.mlxsw_sp1_mr_tcam_region = type { i32 }

@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mlxsw_sp1_mr_tcam_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_mr_tcam_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %4 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mlxsw_sp1_mr_tcam*
  store %struct.mlxsw_sp1_mr_tcam* %6, %struct.mlxsw_sp1_mr_tcam** %3, align 8
  %7 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam, %struct.mlxsw_sp1_mr_tcam* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %8, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %9, i64 0
  store %struct.mlxsw_sp1_mr_tcam_region* %10, %struct.mlxsw_sp1_mr_tcam_region** %4, align 8
  %11 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %4, align 8
  %12 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %11, i64 %12
  %14 = call i32 @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region* %13)
  %15 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %4, align 8
  %16 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %15, i64 %16
  %18 = call i32 @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region* %17)
  ret void
}

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
