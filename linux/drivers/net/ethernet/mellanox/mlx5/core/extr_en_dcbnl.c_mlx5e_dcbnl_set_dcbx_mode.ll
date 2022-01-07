; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_set_dcbx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_set_dcbx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@dcbx_param = common dso_local global i32 0, align 4
@version_admin = common dso_local global i32 0, align 4
@MLX5E_DCBX_PARAM_VER_OPER_HOST = common dso_local global i32 0, align 4
@willing_admin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @mlx5e_dcbnl_set_dcbx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_set_dcbx_mode(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %6, align 8
  %14 = load i32, i32* @dcbx_param, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %20 = call i32 @mlx5_query_port_dcbx_param(%struct.mlx5_core_dev* %19, i32* %18)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @dcbx_param, align 4
  %27 = load i32, i32* @version_admin, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MLX5_SET(i32 %26, i32* %18, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MLX5E_DCBX_PARAM_VER_OPER_HOST, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @dcbx_param, align 4
  %35 = load i32, i32* @willing_admin, align 4
  %36 = call i32 @MLX5_SET(i32 %34, i32* %18, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %39 = call i32 @mlx5_set_port_dcbx_param(%struct.mlx5_core_dev* %38, i32* %18)
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_query_port_dcbx_param(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_set_port_dcbx_param(%struct.mlx5_core_dev*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
