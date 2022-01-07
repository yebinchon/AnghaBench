; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp_ul_rif_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_ul_rif_destroy(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %4 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %4, i32 0, i32 1
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp* %6, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %8 = call i32 @mlxsw_sp_rif_ipip_lb_ul_rif_op(%struct.mlxsw_sp_rif* %7, i32 0)
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  store i32* null, i32** %17, align 8
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %19 = call i32 @kfree(%struct.mlxsw_sp_rif* %18)
  ret void
}

declare dso_local i32 @mlxsw_sp_rif_ipip_lb_ul_rif_op(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
