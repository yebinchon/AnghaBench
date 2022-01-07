; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_timeout_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_timeout_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq_comp = type { i32 }
%struct.mlx5e_txqsq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eq_comp* }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlx5e_tx_reporter_timeout_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tx_reporter_timeout_recover(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx5_eq_comp*, align 8
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mlx5e_txqsq*
  store %struct.mlx5e_txqsq* %7, %struct.mlx5e_txqsq** %4, align 8
  %8 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %11, align 8
  store %struct.mlx5_eq_comp* %12, %struct.mlx5_eq_comp** %3, align 8
  %13 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %3, align 8
  %14 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlx5e_health_channel_eq_recover(%struct.mlx5_eq_comp* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @mlx5e_health_channel_eq_recover(%struct.mlx5_eq_comp*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
