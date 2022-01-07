; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_match_headers_criteria.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_match_headers_criteria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_spec = type { i32 }

@MLX5_FLOW_CONTEXT_ACTION_DECAP = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@inner_headers = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.mlx5_flow_spec*)* @get_match_headers_criteria to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_match_headers_criteria(i32 %0, %struct.mlx5_flow_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_spec*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @fte_match_param, align 4
  %11 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @inner_headers, align 4
  %15 = call i8* @MLX5_ADDR_OF(i32 %10, i32 %13, i32 %14)
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @fte_match_param, align 4
  %18 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @outer_headers, align 4
  %22 = call i8* @MLX5_ADDR_OF(i32 %17, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i8* [ %15, %9 ], [ %22, %16 ]
  ret i8* %24
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
