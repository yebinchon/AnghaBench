; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_qdisc = type { i32 }
%struct.tc_red_qopt_offload_params = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i8*)* @mlxsw_sp_qdisc_red_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_red_replace(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.tc_red_qopt_offload_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.tc_red_qopt_offload_params*
  store %struct.tc_red_qopt_offload_params* %17, %struct.tc_red_qopt_offload_params** %8, align 8
  %18 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %8, align 8
  %22 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %24, 100
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 65536)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @DIV_ROUND_UP(i32 %28, i32 65536)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %31 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %8, align 8
  %32 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %36 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %8, align 8
  %37 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %35, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %8, align 8
  %46 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlxsw_sp_tclass_congestion_enable(%struct.mlxsw_sp_port* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %47)
  ret i32 %48
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_tclass_congestion_enable(%struct.mlxsw_sp_port*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
