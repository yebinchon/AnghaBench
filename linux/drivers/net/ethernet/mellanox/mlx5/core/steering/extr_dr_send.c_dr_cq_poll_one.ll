; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_cq_poll_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_cq_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_cq = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@CQ_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_cq*)* @dr_cq_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_cq_poll_one(%struct.mlx5dr_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_cq*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5dr_cq* %0, %struct.mlx5dr_cq** %3, align 8
  %6 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %6, i32 0, i32 0
  %8 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_cqe(i32* %7)
  store %struct.mlx5_cqe64* %8, %struct.mlx5_cqe64** %4, align 8
  %9 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %10 = icmp ne %struct.mlx5_cqe64* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @CQ_EMPTY, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %14, i32 0, i32 0
  %16 = call i32 @mlx5_cqwq_pop(i32* %15)
  %17 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %3, align 8
  %18 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %19 = call i32 @dr_parse_cqe(%struct.mlx5dr_cq* %17, %struct.mlx5_cqe64* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %20, i32 0, i32 0
  %22 = call i32 @mlx5_cqwq_update_db_record(i32* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_cqe(i32*) #1

declare dso_local i32 @mlx5_cqwq_pop(i32*) #1

declare dso_local i32 @dr_parse_cqe(%struct.mlx5dr_cq*, %struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5_cqwq_update_db_record(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
