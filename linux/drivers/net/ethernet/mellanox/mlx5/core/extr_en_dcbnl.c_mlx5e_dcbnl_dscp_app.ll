; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_dscp_app.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_dscp_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.dcb_app = type { i32, i32, i32 }

@vport_group_manager = common dso_local global i32 0, align 4
@MLX5_QPTS_TRUST_DSCP = common dso_local global i64 0, align 8
@IEEE_8021QAZ_APP_SEL_DSCP = common dso_local global i32 0, align 4
@MLX5E_MAX_DSCP = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32)* @mlx5e_dcbnl_dscp_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_dcbnl_dscp_app(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcb_app, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @vport_group_manager, align 4
  %11 = call i32 @MLX5_CAP_GEN(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @MLX5_DSCP_SUPPORTED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX5_QPTS_TRUST_DSCP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %77

29:                                               ; preds = %21
  %30 = load i32, i32* @IEEE_8021QAZ_APP_SEL_DSCP, align 4
  %31 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %62, %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MLX5E_MAX_DSCP, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %5, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @INIT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dcb_ieee_setapp(i32 %54, %struct.dcb_app* %5)
  br label %61

56:                                               ; preds = %36
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dcb_ieee_delapp(i32 %59, %struct.dcb_app* %5)
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @INIT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @MLX5E_MAX_DSCP, align 4
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %28, %20, %13
  ret void
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_DSCP_SUPPORTED(i32) #1

declare dso_local i32 @dcb_ieee_setapp(i32, %struct.dcb_app*) #1

declare dso_local i32 @dcb_ieee_delapp(i32, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
