; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_trigger_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_trigger_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5_err_cqe = type { i32 }

@MLX5E_RQ_STATE_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.mlx5_cqe64*)* @trigger_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_report(%struct.mlx5e_rq* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca %struct.mlx5_err_cqe*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %4, align 8
  %6 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %7 = bitcast %struct.mlx5_cqe64* %6 to %struct.mlx5_err_cqe*
  store %struct.mlx5_err_cqe* %7, %struct.mlx5_err_cqe** %5, align 8
  %8 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @cqe_syndrome_needs_recover(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* @MLX5E_RQ_STATE_RECOVERING, align 4
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 2
  %17 = call i32 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %27, i32 0, i32 0
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %19, %13, %2
  ret void
}

declare dso_local i64 @cqe_syndrome_needs_recover(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
