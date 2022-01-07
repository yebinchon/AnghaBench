; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_dump_error_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_dump_error_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.mlx5_cqwq }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_cqwq = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_err_cqe = type { i32, i32 }
%struct.mlx5_cqe64 = type { i32 }

@.str = private unnamed_addr constant [92 x i8] c"Error cqe on cqn 0x%x, ci 0x%x, sqn 0x%x, opcode 0x%x, syndrome 0x%x, vendor syndrome 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*, %struct.mlx5_err_cqe*)* @mlx5e_dump_error_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_dump_error_cqe(%struct.mlx5e_txqsq* %0, %struct.mlx5_err_cqe* %1) #0 {
  %3 = alloca %struct.mlx5e_txqsq*, align 8
  %4 = alloca %struct.mlx5_err_cqe*, align 8
  %5 = alloca %struct.mlx5_cqwq*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %3, align 8
  store %struct.mlx5_err_cqe* %1, %struct.mlx5_err_cqe** %4, align 8
  %7 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store %struct.mlx5_cqwq* %9, %struct.mlx5_cqwq** %5, align 8
  %10 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %11 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @mlx5_cqwq_ctr2ix(%struct.mlx5_cqwq* %10, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %4, align 8
  %31 = bitcast %struct.mlx5_err_cqe* %30 to %struct.mlx5_cqe64*
  %32 = call i32 @get_cqe_opcode(%struct.mlx5_cqe64* %31)
  %33 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netdev_err(i32 %20, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %4, align 8
  %45 = call i32 @mlx5_dump_err_cqe(i32 %43, %struct.mlx5_err_cqe* %44)
  ret void
}

declare dso_local i32 @mlx5_cqwq_ctr2ix(%struct.mlx5_cqwq*, i64) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5_dump_err_cqe(i32, %struct.mlx5_err_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
