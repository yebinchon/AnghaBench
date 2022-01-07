; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp1_rif_ipip_lb_deconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp1_rif_ipip_lb_deconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32, i32 }
%struct.mlxsw_sp_rif_ipip_lb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp1_rif_ipip_lb_deconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_rif_ipip_lb_deconfigure(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca %struct.mlxsw_sp_rif_ipip_lb*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %6 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %7 = call %struct.mlxsw_sp_rif_ipip_lb* @mlxsw_sp_rif_ipip_lb_rif(%struct.mlxsw_sp_rif* %6)
  store %struct.mlxsw_sp_rif_ipip_lb* %7, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %8 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %4, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %14, align 8
  %16 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %15, i64 %18
  store %struct.mlxsw_sp_vr* %19, %struct.mlxsw_sp_vr** %5, align 8
  %20 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %21 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb* %20, i32 %23, i32 0, i32 0)
  %25 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %30 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %31 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %29, %struct.mlxsw_sp_vr* %30)
  ret void
}

declare dso_local %struct.mlxsw_sp_rif_ipip_lb* @mlxsw_sp_rif_ipip_lb_rif(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
