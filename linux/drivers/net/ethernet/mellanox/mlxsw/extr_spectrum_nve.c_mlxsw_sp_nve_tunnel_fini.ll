; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_tunnel_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_tunnel_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i32, %struct.TYPE_2__, i32, %struct.mlxsw_sp_nve_ops** }
%struct.TYPE_2__ = type { i64 }
%struct.mlxsw_sp_nve_ops = type { i32 (%struct.mlxsw_sp_nve.0*)* }
%struct.mlxsw_sp_nve.0 = type opaque

@MLXSW_SP_KVDL_ENTRY_TYPE_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_nve_tunnel_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_tunnel_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_nve*, align 8
  %4 = alloca %struct.mlxsw_sp_nve_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %5, i32 0, i32 0
  %7 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  store %struct.mlxsw_sp_nve* %7, %struct.mlxsw_sp_nve** %3, align 8
  %8 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %8, i32 0, i32 3
  %10 = load %struct.mlxsw_sp_nve_ops**, %struct.mlxsw_sp_nve_ops*** %9, align 8
  %11 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %10, i64 %14
  %16 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %15, align 8
  store %struct.mlxsw_sp_nve_ops* %16, %struct.mlxsw_sp_nve_ops** %4, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %18, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nve_ops, %struct.mlxsw_sp_nve_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.mlxsw_sp_nve.0*)*, i32 (%struct.mlxsw_sp_nve.0*)** %25, align 8
  %27 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %28 = bitcast %struct.mlxsw_sp_nve* %27 to %struct.mlxsw_sp_nve.0*
  %29 = call i32 %26(%struct.mlxsw_sp_nve.0* %28)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %31 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %32 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %30, i32 %31, i32 1, i32 %34)
  %36 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %36, i32 0, i32 1
  %38 = call i32 @memset(%struct.TYPE_2__* %37, i32 0, i32 8)
  br label %39

39:                                               ; preds = %23, %1
  %40 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  ret void
}

declare dso_local i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
