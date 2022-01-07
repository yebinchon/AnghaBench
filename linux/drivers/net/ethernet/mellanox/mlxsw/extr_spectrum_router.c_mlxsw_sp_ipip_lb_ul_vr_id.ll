; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_lb_ul_vr_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_lb_ul_vr_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif_ipip_lb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxsw_sp_vr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_ipip_lb_ul_vr_id(%struct.mlxsw_sp_rif_ipip_lb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_rif_ipip_lb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp_rif_ipip_lb* %0, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %6 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(i32 %14, i32 %15, i32* null)
  store %struct.mlxsw_sp_vr* %16, %struct.mlxsw_sp_vr** %5, align 8
  %17 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %18 = call i32 @IS_ERR(%struct.mlxsw_sp_vr* %17)
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32) #1

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
