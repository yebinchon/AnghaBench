; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_vr = type { i32*, i32*, i32** }

@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*)* @mlxsw_sp_vr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_vr_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_vr* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_vr* %1, %struct.mlxsw_sp_vr** %4, align 8
  %5 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %5, i32 0, i32 2
  %7 = load i32**, i32*** %6, align 8
  %8 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @mlxsw_sp_mr_table_destroy(i32* %10)
  %12 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  store i32* null, i32** %16, align 8
  %17 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @mlxsw_sp_mr_table_destroy(i32* %22)
  %24 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  store i32* null, i32** %28, align 8
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %30 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp* %29, i32* %32)
  %34 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %37 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp* %36, i32* %39)
  %41 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  ret void
}

declare dso_local i32 @mlxsw_sp_mr_table_destroy(i32*) #1

declare dso_local i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
