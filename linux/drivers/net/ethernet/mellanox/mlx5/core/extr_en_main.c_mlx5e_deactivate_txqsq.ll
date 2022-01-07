; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_txqsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_txqsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.mlx5_wq_cyc, %struct.mlx5e_channel* }
%struct.TYPE_2__ = type { %struct.mlx5e_tx_wqe_info* }
%struct.mlx5e_tx_wqe_info = type { i32 }
%struct.mlx5_wq_cyc = type { i32 }
%struct.mlx5e_channel = type { i32 }
%struct.mlx5e_tx_wqe = type { i32 }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*)* @mlx5e_deactivate_txqsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_deactivate_txqsq(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  %3 = alloca %struct.mlx5e_channel*, align 8
  %4 = alloca %struct.mlx5_wq_cyc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  %7 = alloca %struct.mlx5e_tx_wqe*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %8 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %8, i32 0, i32 8
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %9, align 8
  store %struct.mlx5e_channel* %10, %struct.mlx5e_channel** %3, align 8
  %11 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %11, i32 0, i32 7
  store %struct.mlx5_wq_cyc* %12, %struct.mlx5_wq_cyc** %4, align 8
  %13 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %14 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %14, i32 0, i32 6
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %17, i32 0, i32 0
  %19 = call i32 @napi_synchronize(i32* %18)
  %20 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx5e_tx_disable_queue(i32 %22)
  %24 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %25 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @mlx5e_wqc_has_room_for(%struct.mlx5_wq_cyc* %24, i32 %27, i32 %30, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %1
  %34 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %35 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %34, i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %42, i64 %43
  store %struct.mlx5e_tx_wqe_info* %44, %struct.mlx5e_tx_wqe_info** %6, align 8
  %45 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %6, align 8
  %46 = call i32 @memset(%struct.mlx5e_tx_wqe_info* %45, i32 0, i32 4)
  %47 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %50 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %54 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %53, i32 0, i32 1
  %55 = call %struct.mlx5e_tx_wqe* @mlx5e_post_nop(%struct.mlx5_wq_cyc* %49, i32 %52, i32* %54)
  store %struct.mlx5e_tx_wqe* %55, %struct.mlx5e_tx_wqe** %7, align 8
  %56 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %57 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %7, align 8
  %64 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %63, i32 0, i32 0
  %65 = call i32 @mlx5e_notify_hw(%struct.mlx5_wq_cyc* %56, i32 %59, i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @mlx5e_tx_disable_queue(i32) #1

declare dso_local i64 @mlx5e_wqc_has_room_for(%struct.mlx5_wq_cyc*, i32, i32, i32) #1

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i32 @memset(%struct.mlx5e_tx_wqe_info*, i32, i32) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5e_post_nop(%struct.mlx5_wq_cyc*, i32, i32*) #1

declare dso_local i32 @mlx5e_notify_hw(%struct.mlx5_wq_cyc*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
