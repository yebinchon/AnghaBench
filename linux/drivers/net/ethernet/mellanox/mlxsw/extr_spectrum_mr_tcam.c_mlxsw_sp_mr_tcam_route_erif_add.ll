; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_erif_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_erif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_tcam_route = type { i64, i32 }

@MLXSW_SP_MR_ROUTE_ACTION_TRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32)* @mlxsw_sp_mr_tcam_route_erif_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_route_erif_add(%struct.mlxsw_sp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %11, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %13, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mlxsw_sp_mr_erif_list_add(%struct.mlxsw_sp* %12, i32* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLXSW_SP_MR_ROUTE_ACTION_TRAP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %29 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %29, i32 0, i32 1
  %31 = call i32 @mlxsw_sp_mr_erif_list_commit(%struct.mlxsw_sp* %28, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %27, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @mlxsw_sp_mr_erif_list_add(%struct.mlxsw_sp*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_commit(%struct.mlxsw_sp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
