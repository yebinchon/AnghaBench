; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_action_push_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_action_push_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { i32 }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5_fs_vlan = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_action* (%struct.mlx5dr_domain*, %struct.mlx5_fs_vlan*)* @create_action_push_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_action* @create_action_push_vlan(%struct.mlx5dr_domain* %0, %struct.mlx5_fs_vlan* %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5_fs_vlan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  store %struct.mlx5_fs_vlan* %1, %struct.mlx5_fs_vlan** %4, align 8
  %9 = load %struct.mlx5_fs_vlan*, %struct.mlx5_fs_vlan** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_fs_vlan, %struct.mlx5_fs_vlan* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mlx5_fs_vlan*, %struct.mlx5_fs_vlan** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_fs_vlan, %struct.mlx5_fs_vlan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mlx5_fs_vlan*, %struct.mlx5_fs_vlan** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_fs_vlan, %struct.mlx5_fs_vlan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 16
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 12
  %24 = or i32 %20, %23
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = or i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = call %struct.mlx5dr_action* @mlx5dr_action_create_push_vlan(%struct.mlx5dr_domain* %28, i32 %30)
  ret %struct.mlx5dr_action* %31
}

declare dso_local %struct.mlx5dr_action* @mlx5dr_action_create_push_vlan(%struct.mlx5dr_domain*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
