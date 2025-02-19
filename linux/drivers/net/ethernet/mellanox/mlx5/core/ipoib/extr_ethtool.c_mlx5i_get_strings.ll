; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ethtool.c_mlx5i_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ethtool.c_mlx5i_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @mlx5i_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5i_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %7, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @mlx5e_ethtool_get_strings(%struct.mlx5e_priv* %10, i32 %11, i32* %12)
  ret void
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_ethtool_get_strings(%struct.mlx5e_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
