; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_irif_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_irif_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_tcam_route = type { i64, i32 }

@MLXSW_SP_MR_ROUTE_ACTION_TRAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32)* @mlxsw_sp_mr_tcam_route_irif_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_route_irif_update(%struct.mlxsw_sp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %10, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %11 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLXSW_SP_MR_ROUTE_ACTION_TRAP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
