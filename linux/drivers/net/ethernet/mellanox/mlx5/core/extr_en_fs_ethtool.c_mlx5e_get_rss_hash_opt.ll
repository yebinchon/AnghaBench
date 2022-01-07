; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_get_rss_hash_opt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_get_rss_hash_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ethtool_rxnfc = type { i32, i32 }

@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_SRC_IP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_DST_IP = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_L4_SPORT = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_L4_DPORT = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.ethtool_rxnfc*)* @mlx5e_get_rss_hash_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_rss_hash_opt(%struct.mlx5e_priv* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @flow_type_to_traffic_type(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MLX5_HASH_FIELD_SEL_SRC_IP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i32, i32* @RXH_IP_SRC, align 4
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %18
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MLX5_HASH_FIELD_SEL_DST_IP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @RXH_IP_DST, align 4
  %46 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MLX5_HASH_FIELD_SEL_L4_SPORT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @RXH_L4_B_0_1, align 4
  %57 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MLX5_HASH_FIELD_SEL_L4_DPORT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @RXH_L4_B_2_3, align 4
  %68 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @flow_type_to_traffic_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
