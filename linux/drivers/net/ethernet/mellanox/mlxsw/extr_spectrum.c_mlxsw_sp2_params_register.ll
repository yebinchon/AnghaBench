; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_params_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_params_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.devlink = type { i32 }
%union.devlink_param_value = type { i64 }

@mlxsw_sp2_devlink_params = common dso_local global i32 0, align 4
@MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp2_params_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_params_register(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %union.devlink_param_value, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %7 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %8 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %7)
  store %struct.devlink* %8, %struct.devlink** %4, align 8
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %10 = call i32 @mlxsw_sp_params_register(%struct.mlxsw_core* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.devlink*, %struct.devlink** %4, align 8
  %17 = load i32, i32* @mlxsw_sp2_devlink_params, align 4
  %18 = load i32, i32* @mlxsw_sp2_devlink_params, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @devlink_params_register(%struct.devlink* %16, i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %31

24:                                               ; preds = %15
  %25 = bitcast %union.devlink_param_value* %5 to i64*
  store i64 0, i64* %25, align 8
  %26 = load %struct.devlink*, %struct.devlink** %4, align 8
  %27 = load i32, i32* @MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL, align 4
  %28 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %26, i32 %27, i64 %29)
  store i32 0, i32* %2, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %33 = call i32 @mlxsw_sp_params_unregister(%struct.mlxsw_core* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %24, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_params_register(%struct.mlxsw_core*) #1

declare dso_local i32 @devlink_params_register(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devlink_param_driverinit_value_set(%struct.devlink*, i32, i64) #1

declare dso_local i32 @mlxsw_sp_params_unregister(%struct.mlxsw_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
