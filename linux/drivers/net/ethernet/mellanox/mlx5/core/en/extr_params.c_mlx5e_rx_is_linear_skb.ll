; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_is_linear_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_is_linear_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %0, %struct.mlx5e_xsk_param* %1) #0 {
  %3 = alloca %struct.mlx5e_params*, align 8
  %4 = alloca %struct.mlx5e_xsk_param*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %3, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %4, align 8
  %6 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %7 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %4, align 8
  %8 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %6, %struct.mlx5e_xsk_param* %7)
  %9 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %10 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %9, %struct.mlx5e_xsk_param* null)
  %11 = call i64 @max(i32 %8, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp sle i64 %17, %18
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ false, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
