; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_timeout_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_timeout_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_icosq = type { i32 }
%struct.mlx5_eq_comp = type { i32 }
%struct.mlx5e_rq = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.mlx5e_icosq }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eq_comp* }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlx5e_rx_reporter_timeout_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_reporter_timeout_recover(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx5e_icosq*, align 8
  %4 = alloca %struct.mlx5_eq_comp*, align 8
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mlx5e_rq*
  store %struct.mlx5e_rq* %8, %struct.mlx5e_rq** %5, align 8
  %9 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.mlx5e_icosq* %12, %struct.mlx5e_icosq** %3, align 8
  %13 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %16, align 8
  store %struct.mlx5_eq_comp* %17, %struct.mlx5_eq_comp** %4, align 8
  %18 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @mlx5e_health_channel_eq_recover(%struct.mlx5_eq_comp* %18, %struct.TYPE_6__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %27 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @mlx5e_health_channel_eq_recover(%struct.mlx5_eq_comp*, %struct.TYPE_6__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
