; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @mlx4_en_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %5, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 10
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret i32 0
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
