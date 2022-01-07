; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_unpair_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_unpair_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hairpin = type { i32, i32*, i32, i64, i32*, i32 }

@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hairpin*)* @mlx5_hairpin_unpair_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_hairpin_unpair_queues(%struct.mlx5_hairpin* %0) #0 {
  %2 = alloca %struct.mlx5_hairpin*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_hairpin* %0, %struct.mlx5_hairpin** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %22 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %23 = call i32 @mlx5_hairpin_modify_rq(i32 %13, i32 %20, i32 %21, i32 %22, i32 0, i32 0)
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %57

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %52 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %53 = call i32 @mlx5_hairpin_modify_sq(i32 %43, i32 %50, i32 %51, i32 %52, i32 0, i32 0)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %34

57:                                               ; preds = %32, %34
  ret void
}

declare dso_local i32 @mlx5_hairpin_modify_rq(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_hairpin_modify_sq(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
