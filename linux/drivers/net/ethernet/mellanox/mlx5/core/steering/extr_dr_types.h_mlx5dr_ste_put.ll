; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_types.h_mlx5dr_ste_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_types.h_mlx5dr_ste_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32 }
%struct.mlx5dr_matcher = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*)* @mlx5dr_ste_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5dr_ste_put(%struct.mlx5dr_ste* %0, %struct.mlx5dr_matcher* %1, %struct.mlx5dr_matcher_rx_tx* %2) #0 {
  %4 = alloca %struct.mlx5dr_ste*, align 8
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %4, align 8
  store %struct.mlx5dr_matcher* %1, %struct.mlx5dr_matcher** %5, align 8
  store %struct.mlx5dr_matcher_rx_tx* %2, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %7 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %7, i32 0, i32 0
  %9 = call i64 @refcount_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %13 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %14 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %15 = call i32 @mlx5dr_ste_free(%struct.mlx5dr_ste* %12, %struct.mlx5dr_matcher* %13, %struct.mlx5dr_matcher_rx_tx* %14)
  br label %16

16:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mlx5dr_ste_free(%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
