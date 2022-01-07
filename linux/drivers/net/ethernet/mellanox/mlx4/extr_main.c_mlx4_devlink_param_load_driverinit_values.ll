; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_param_load_driverinit_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_param_load_driverinit_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev }
%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i64 }
%union.devlink_param_value = type { i64 }

@DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET = common dso_local global i32 0, align 4
@mlx4_internal_err_reset = common dso_local global i64 0, align 8
@DEVLINK_PARAM_GENERIC_ID_MAX_MACS = common dso_local global i32 0, align 4
@log_num_mac = common dso_local global i32 0, align 4
@MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE = common dso_local global i32 0, align 4
@enable_64b_cqe_eqe = common dso_local global i64 0, align 8
@MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR = common dso_local global i32 0, align 4
@enable_4k_uar = common dso_local global i64 0, align 8
@DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*)* @mlx4_devlink_param_load_driverinit_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_devlink_param_load_driverinit_values(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_fw_crdump*, align 8
  %6 = alloca %union.devlink_param_value, align 8
  %7 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %8 = load %struct.devlink*, %struct.devlink** %2, align 8
  %9 = call %struct.mlx4_priv* @devlink_priv(%struct.devlink* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %3, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %4, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.mlx4_fw_crdump* %15, %struct.mlx4_fw_crdump** %5, align 8
  %16 = load %struct.devlink*, %struct.devlink** %2, align 8
  %17 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET, align 4
  %18 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %16, i32 %17, %union.devlink_param_value* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* @mlx4_internal_err_reset, align 8
  %23 = bitcast %union.devlink_param_value* %6 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = bitcast %union.devlink_param_value* %6 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @mlx4_internal_err_reset, align 8
  %29 = load %struct.devlink*, %struct.devlink** %2, align 8
  %30 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET, align 4
  %31 = call i32 @devlink_param_value_changed(%struct.devlink* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21, %1
  %33 = load %struct.devlink*, %struct.devlink** %2, align 8
  %34 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_MAX_MACS, align 4
  %35 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %33, i32 %34, %union.devlink_param_value* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = bitcast %union.devlink_param_value* %6 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @order_base_2(i32 %40)
  store i32 %41, i32* @log_num_mac, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.devlink*, %struct.devlink** %2, align 8
  %44 = load i32, i32* @MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE, align 4
  %45 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %43, i32 %44, %union.devlink_param_value* %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = bitcast %union.devlink_param_value* %6 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* @enable_64b_cqe_eqe, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.devlink*, %struct.devlink** %2, align 8
  %53 = load i32, i32* @MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR, align 4
  %54 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %52, i32 %53, %union.devlink_param_value* %6)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = bitcast %union.devlink_param_value* %6 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* @enable_4k_uar, align 8
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.devlink*, %struct.devlink** %2, align 8
  %62 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT, align 4
  %63 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %61, i32 %62, %union.devlink_param_value* %6)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %60
  %67 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = bitcast %union.devlink_param_value* %6 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = bitcast %union.devlink_param_value* %6 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mlx4_fw_crdump*, %struct.mlx4_fw_crdump** %5, align 8
  %77 = getelementptr inbounds %struct.mlx4_fw_crdump, %struct.mlx4_fw_crdump* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.devlink*, %struct.devlink** %2, align 8
  %79 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT, align 4
  %80 = call i32 @devlink_param_value_changed(%struct.devlink* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %66, %60
  ret void
}

declare dso_local %struct.mlx4_priv* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_param_driverinit_value_get(%struct.devlink*, i32, %union.devlink_param_value*) #1

declare dso_local i32 @devlink_param_value_changed(%struct.devlink*, i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
