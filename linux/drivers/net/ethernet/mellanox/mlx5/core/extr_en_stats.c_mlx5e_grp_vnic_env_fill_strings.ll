; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_vnic_env_fill_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_vnic_env_fill_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_priv = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@vnic_env_stats_steer_desc = common dso_local global %struct.TYPE_3__* null, align 8
@vnic_env_stats_dev_oob_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_vnic_env_fill_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_vnic_env_fill_strings(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NUM_VNIC_ENV_STEER_COUNTERS(i32 %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = mul nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnic_env_stats_steer_desc, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32* %22, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NUM_VNIC_ENV_DEV_OOB_COUNTERS(i32 %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %46 = mul nsw i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnic_env_stats_dev_oob_desc, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32* %48, i32 %54)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @NUM_VNIC_ENV_STEER_COUNTERS(i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @NUM_VNIC_ENV_DEV_OOB_COUNTERS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
