; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_set_params_init_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_set_params_init_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%union.devlink_param_value = type { i64 }

@mlx4_internal_err_reset = common dso_local global i32 0, align 4
@DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET = common dso_local global i32 0, align 4
@log_num_mac = common dso_local global i64 0, align 8
@DEVLINK_PARAM_GENERIC_ID_MAX_MACS = common dso_local global i32 0, align 4
@enable_64b_cqe_eqe = common dso_local global i32 0, align 4
@MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE = common dso_local global i32 0, align 4
@enable_4k_uar = common dso_local global i32 0, align 4
@MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR = common dso_local global i32 0, align 4
@DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*)* @mlx4_devlink_set_params_init_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_devlink_set_params_init_values(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  %3 = alloca %union.devlink_param_value, align 8
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %4 = load i32, i32* @mlx4_internal_err_reset, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = bitcast %union.devlink_param_value* %3 to i32*
  store i32 %8, i32* %9, align 8
  %10 = load %struct.devlink*, %struct.devlink** %2, align 8
  %11 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET, align 4
  %12 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %10, i32 %11, i64 %13)
  %15 = load i64, i64* @log_num_mac, align 8
  %16 = shl i64 1, %15
  %17 = bitcast %union.devlink_param_value* %3 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load %struct.devlink*, %struct.devlink** %2, align 8
  %19 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_MAX_MACS, align 4
  %20 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %18, i32 %19, i64 %21)
  %23 = load i32, i32* @enable_64b_cqe_eqe, align 4
  %24 = bitcast %union.devlink_param_value* %3 to i32*
  store i32 %23, i32* %24, align 8
  %25 = load %struct.devlink*, %struct.devlink** %2, align 8
  %26 = load i32, i32* @MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE, align 4
  %27 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %25, i32 %26, i64 %28)
  %30 = load i32, i32* @enable_4k_uar, align 4
  %31 = bitcast %union.devlink_param_value* %3 to i32*
  store i32 %30, i32* %31, align 8
  %32 = load %struct.devlink*, %struct.devlink** %2, align 8
  %33 = load i32, i32* @MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR, align 4
  %34 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %32, i32 %33, i64 %35)
  %37 = bitcast %union.devlink_param_value* %3 to i32*
  store i32 0, i32* %37, align 8
  %38 = load %struct.devlink*, %struct.devlink** %2, align 8
  %39 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT, align 4
  %40 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %38, i32 %39, i64 %41)
  ret void
}

declare dso_local i32 @devlink_param_driverinit_value_set(%struct.devlink*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
