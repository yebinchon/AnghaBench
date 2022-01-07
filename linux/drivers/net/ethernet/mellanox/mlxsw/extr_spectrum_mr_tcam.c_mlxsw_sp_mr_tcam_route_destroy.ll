; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr_tcam_ops* }
%struct.mlxsw_sp_mr_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_mr_tcam_route = type { i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_mr_tcam = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i8*)* @mlxsw_sp_mr_tcam_route_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_mr_tcam_route_destroy(%struct.mlxsw_sp* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_tcam_ops*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_tcam*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %11, align 8
  store %struct.mlxsw_sp_mr_tcam_ops* %12, %struct.mlxsw_sp_mr_tcam_ops** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %14, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mlxsw_sp_mr_tcam*
  store %struct.mlxsw_sp_mr_tcam* %16, %struct.mlxsw_sp_mr_tcam** %9, align 8
  %17 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32*)** %18, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = bitcast %struct.mlxsw_sp* %20 to %struct.mlxsw_sp.0*
  %22 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %9, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %28, i32 0, i32 4
  %30 = call i32 %19(%struct.mlxsw_sp.0* %21, i32 %24, i32 %27, i32* %29)
  %31 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(i32 %37)
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %40 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlxsw_sp_flow_counter_free(%struct.mlxsw_sp* %39, i32 %42)
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %45 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %8, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %45, i32 0, i32 0
  %47 = call i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp* %44, i32* %46)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_afa_block_destroy(i32) #1

declare dso_local i32 @mlxsw_sp_flow_counter_free(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_flush(%struct.mlxsw_sp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
