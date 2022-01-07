; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_init_eq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_init_eq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq = type { i32 }
%struct.mlx5_eqe = type { i32 }

@MLX5_EQE_OWNER_INIT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eq*)* @init_eq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_eq_buf(%struct.mlx5_eq* %0) #0 {
  %2 = alloca %struct.mlx5_eq*, align 8
  %3 = alloca %struct.mlx5_eqe*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_eq* %0, %struct.mlx5_eq** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mlx5_eq*, %struct.mlx5_eq** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load %struct.mlx5_eq*, %struct.mlx5_eq** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.mlx5_eqe* @get_eqe(%struct.mlx5_eq* %12, i32 %13)
  store %struct.mlx5_eqe* %14, %struct.mlx5_eqe** %3, align 8
  %15 = load i32, i32* @MLX5_EQE_OWNER_INIT_VAL, align 4
  %16 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local %struct.mlx5_eqe* @get_eqe(%struct.mlx5_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
