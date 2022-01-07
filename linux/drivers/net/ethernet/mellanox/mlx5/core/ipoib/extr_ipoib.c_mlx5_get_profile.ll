; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_get_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_get_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_profile = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@mlx5i_nic_profile = common dso_local global %struct.mlx5e_profile zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_profile* (%struct.mlx5_core_dev*)* @mlx5_get_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_profile* @mlx5_get_profile(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5e_profile*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %5 = call i64 @mlx5_is_sub_interface(%struct.mlx5_core_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call %struct.mlx5e_profile* (...) @mlx5i_pkey_get_profile()
  store %struct.mlx5e_profile* %8, %struct.mlx5e_profile** %2, align 8
  br label %10

9:                                                ; preds = %1
  store %struct.mlx5e_profile* @mlx5i_nic_profile, %struct.mlx5e_profile** %2, align 8
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %2, align 8
  ret %struct.mlx5e_profile* %11
}

declare dso_local i64 @mlx5_is_sub_interface(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5e_profile* @mlx5i_pkey_get_profile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
