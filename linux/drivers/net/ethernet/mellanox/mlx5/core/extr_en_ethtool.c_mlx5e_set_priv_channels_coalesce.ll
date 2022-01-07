; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_priv_channels_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_priv_channels_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__, %struct.mlx5_core_dev* }
%struct.TYPE_6__ = type { i32, %struct.mlx5e_channel** }
%struct.mlx5e_channel = type { i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.ethtool_coalesce*)* @mlx5e_set_priv_channels_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_set_priv_channels_coalesce(%struct.mlx5e_priv* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %12
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %23, i64 %25
  %27 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %26, align 8
  store %struct.mlx5e_channel* %27, %struct.mlx5e_channel** %8, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %19
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev* %35, i32* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %56 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev* %55, i32* %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
