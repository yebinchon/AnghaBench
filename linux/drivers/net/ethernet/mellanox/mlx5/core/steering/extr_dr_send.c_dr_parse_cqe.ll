; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_parse_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_parse_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_cq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64*, i64 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_REQ_ERR = common dso_local global i64 0, align 8
@MLX5_CQE_RESP_ERR = common dso_local global i64 0, align 8
@CQ_OK = common dso_local global i32 0, align 4
@CQ_POLL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_cq*, %struct.mlx5_cqe64*)* @dr_parse_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_parse_cqe(%struct.mlx5dr_cq* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_cq*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mlx5dr_cq* %0, %struct.mlx5dr_cq** %4, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %5, align 8
  %8 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %9 = call i64 @get_cqe_opcode(%struct.mlx5_cqe64* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @MLX5_CQE_REQ_ERR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be16_to_cpu(i32 %16)
  %18 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %17, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 %36, i64* %41, align 8
  br label %85

42:                                               ; preds = %2
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MLX5_CQE_RESP_ERR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %84

54:                                               ; preds = %42
  %55 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %58, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i64 %77, i64* %82, align 8
  %83 = load i32, i32* @CQ_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %87

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84, %13
  %86 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %54
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
