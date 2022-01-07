; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_destroy_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_destroy_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hairpin = type { i32, i32*, i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hairpin*)* @mlx5_hairpin_destroy_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_hairpin_destroy_queues(%struct.mlx5_hairpin* %0) #0 {
  %2 = alloca %struct.mlx5_hairpin*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_hairpin* %0, %struct.mlx5_hairpin** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %42

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
  %21 = call i32 @mlx5_core_destroy_rq(i32 %13, i32 %20)
  %22 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %10
  %27 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5_core_destroy_sq(i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %26, %10
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local i32 @mlx5_core_destroy_rq(i32, i32) #1

declare dso_local i32 @mlx5_core_destroy_sq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
