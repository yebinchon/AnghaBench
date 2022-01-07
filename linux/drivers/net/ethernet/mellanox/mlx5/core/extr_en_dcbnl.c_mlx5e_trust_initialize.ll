; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_trust_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_trust_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.mlx5_core_dev*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLX5_QPTS_TRUST_PCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_trust_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_trust_initialize(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 1
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load i32, i32* @MLX5_QPTS_TRUST_PCP, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = call i32 @MLX5_DSCP_SUPPORTED(%struct.mlx5_core_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @mlx5_query_trust_state(%struct.mlx5_core_dev* %20, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %17
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @mlx5e_trust_update_tx_min_inline_mode(%struct.mlx5e_priv* %30, i32* %33)
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 1
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %36, align 8
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mlx5_query_dscp2prio(%struct.mlx5_core_dev* %37, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %27, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @MLX5_DSCP_SUPPORTED(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_trust_state(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_trust_update_tx_min_inline_mode(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5_query_dscp2prio(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
