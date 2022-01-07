; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp1_rif_ipip_lb_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp1_rif_ipip_lb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.mlxsw_sp*, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif_ipip_lb = type { i64, i32 }
%struct.mlxsw_sp_vr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*)* @mlxsw_sp1_rif_ipip_lb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_rif_ipip_lb_configure(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca %struct.mlxsw_sp_rif_ipip_lb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_vr*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  %9 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %10 = call %struct.mlxsw_sp_rif_ipip_lb* @mlxsw_sp_rif_ipip_lb_rif(%struct.mlxsw_sp_rif* %9)
  store %struct.mlxsw_sp_rif_ipip_lb* %10, %struct.mlxsw_sp_rif_ipip_lb** %4, align 8
  %11 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %6, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %18, i32 %19, i32* null)
  store %struct.mlxsw_sp_vr* %20, %struct.mlxsw_sp_vr** %7, align 8
  %21 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %22 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.mlxsw_sp_vr* %25)
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %4, align 8
  %29 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb* %28, i32 %31, i32 0, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %4, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %4, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %7, align 8
  %51 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %49, %struct.mlxsw_sp_vr* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %36, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.mlxsw_sp_rif_ipip_lb* @mlxsw_sp_rif_ipip_lb_rif(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(i32) #1

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
