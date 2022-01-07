; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_txqsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_txqsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i64, i32, i32, %struct.TYPE_2__, %struct.mlx5e_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_channel = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_rate_limit = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*)* @mlx5e_close_txqsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_close_txqsq(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  %3 = alloca %struct.mlx5e_channel*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_rate_limit, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %6 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %6, i32 0, i32 4
  %8 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  store %struct.mlx5e_channel* %8, %struct.mlx5e_channel** %3, align 8
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %9, i32 0, i32 0
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %4, align 8
  %12 = bitcast %struct.mlx5_rate_limit* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %17, i32 0, i32 2
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %21 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mlx5e_destroy_sq(%struct.mlx5_core_dev* %20, i32 %23)
  %25 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %5, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %35 = call i32 @mlx5_rl_remove_rate(%struct.mlx5_core_dev* %34, %struct.mlx5_rate_limit* %5)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %38 = call i32 @mlx5e_free_txqsq_descs(%struct.mlx5e_txqsq* %37)
  %39 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %40 = call i32 @mlx5e_free_txqsq(%struct.mlx5e_txqsq* %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cancel_work_sync(i32*) #2

declare dso_local i32 @mlx5e_destroy_sq(%struct.mlx5_core_dev*, i32) #2

declare dso_local i32 @mlx5_rl_remove_rate(%struct.mlx5_core_dev*, %struct.mlx5_rate_limit*) #2

declare dso_local i32 @mlx5e_free_txqsq_descs(%struct.mlx5e_txqsq*) #2

declare dso_local i32 @mlx5e_free_txqsq(%struct.mlx5e_txqsq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
