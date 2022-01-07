; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_dcbx = type { i64, i32, i32, i32 }
%struct.mlx5e_priv = type { %struct.mlx5e_dcbx, i32 }

@qos = common dso_local global %struct.mlx5e_dcbx* null, align 8
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@MLX5E_DCBX_PARAM_VER_OPER_HOST = common dso_local global i64 0, align 8
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4
@MLX5E_DEFAULT_CABLE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_dcbnl_initialize(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_dcbx*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 0
  store %struct.mlx5e_dcbx* %5, %struct.mlx5e_dcbx** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %7 = call i32 @mlx5e_trust_initialize(%struct.mlx5e_priv* %6)
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** @qos, align 8
  %12 = call i64 @MLX5_CAP_GEN(i32 %10, %struct.mlx5e_dcbx* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %3, align 8
  %20 = call i64 @MLX5_CAP_GEN(i32 %18, %struct.mlx5e_dcbx* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %24 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %24, i32 0, i32 0
  %26 = call i32 @mlx5e_dcbnl_query_dcbx_mode(%struct.mlx5e_priv* %23, i64* %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %29 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_HOST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %27
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @MLX5E_DEFAULT_CABLE_LEN, align 4
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %56 = call i32 @mlx5e_ets_init(%struct.mlx5e_priv* %55)
  br label %57

57:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @mlx5e_trust_initialize(%struct.mlx5e_priv*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, %struct.mlx5e_dcbx*) #1

declare dso_local i32 @mlx5e_dcbnl_query_dcbx_mode(%struct.mlx5e_priv*, i64*) #1

declare dso_local i32 @mlx5e_ets_init(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
