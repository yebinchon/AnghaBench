; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_is_valid_eswitch_fwd_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_is_valid_eswitch_fwd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_is_valid_eswitch_fwd_dev(%struct.mlx5e_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call i64 @is_merged_eswitch_dev(%struct.mlx5e_priv* %6, %struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i64 @mlx5e_eswitch_rep(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netdev_priv(%struct.net_device* %17)
  %19 = call i64 @same_hw_devs(%struct.mlx5e_priv* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @is_merged_eswitch_dev(%struct.mlx5e_priv*, %struct.net_device*) #1

declare dso_local i64 @mlx5e_eswitch_rep(%struct.net_device*) #1

declare dso_local i64 @same_hw_devs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
