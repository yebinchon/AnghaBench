; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_handle_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_handle_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5_err_cqe = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unexpected cqe opcode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*)* @mlx5_fpga_conn_handle_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_handle_cqe(%struct.mlx5_fpga_conn* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %8 = call i32 @get_cqe_opcode(%struct.mlx5_cqe64* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %30 [
    i32 130, label %10
    i32 131, label %15
    i32 129, label %20
    i32 128, label %25
  ]

10:                                               ; preds = %2
  %11 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %12 = bitcast %struct.mlx5_cqe64* %11 to %struct.mlx5_err_cqe*
  %13 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %2, %10
  %16 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %17 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mlx5_fpga_conn_sq_cqe(%struct.mlx5_fpga_conn* %16, %struct.mlx5_cqe64* %17, i32 %18)
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %22 = bitcast %struct.mlx5_cqe64* %21 to %struct.mlx5_err_cqe*
  %23 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %2, %20
  %26 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %27 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn* %26, %struct.mlx5_cqe64* %27, i32 %28)
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mlx5_fpga_warn(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %25, %15
  ret void
}

declare dso_local i32 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5_fpga_conn_sq_cqe(%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
