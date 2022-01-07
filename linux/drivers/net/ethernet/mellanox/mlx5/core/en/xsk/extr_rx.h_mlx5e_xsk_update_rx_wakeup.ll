; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.h_mlx5e_xsk_update_rx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.h_mlx5e_xsk_update_rx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i32)* @mlx5e_xsk_update_rx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xsk_update_rx_wakeup(%struct.mlx5e_rq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xsk_umem_uses_need_wakeup(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xsk_set_rx_need_wakeup(i32 %20)
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xsk_clear_rx_need_wakeup(i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @xsk_umem_uses_need_wakeup(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_set_rx_need_wakeup(i32) #1

declare dso_local i32 @xsk_clear_rx_need_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
