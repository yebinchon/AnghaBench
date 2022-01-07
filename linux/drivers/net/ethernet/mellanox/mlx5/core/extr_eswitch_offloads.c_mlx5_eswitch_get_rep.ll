; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_get_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_get_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch_rep = type { i32 }
%struct.mlx5_eswitch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eswitch_rep* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_eswitch_rep* (%struct.mlx5_eswitch*, i32)* @mlx5_eswitch_get_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = icmp sgt i32 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %20, i64 %22
  ret %struct.mlx5_eswitch_rep* %23
}

declare dso_local i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
