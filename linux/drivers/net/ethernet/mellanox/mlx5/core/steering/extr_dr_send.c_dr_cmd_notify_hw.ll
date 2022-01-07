; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_cmd_notify_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_cmd_notify_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_qp = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@MLX5_BF_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_qp*, i8*)* @dr_cmd_notify_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_cmd_notify_hw(%struct.mlx5dr_qp* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5dr_qp*, align 8
  %4 = alloca i8*, align 8
  store %struct.mlx5dr_qp* %0, %struct.mlx5dr_qp** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @dma_wmb()
  %6 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 1048575
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32 %11, i32* %16, align 4
  %17 = call i32 (...) @wmb()
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.mlx5dr_qp*, %struct.mlx5dr_qp** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_qp, %struct.mlx5dr_qp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5_BF_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mlx5_write64(i8* %18, i64 %25)
  ret void
}

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx5_write64(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
