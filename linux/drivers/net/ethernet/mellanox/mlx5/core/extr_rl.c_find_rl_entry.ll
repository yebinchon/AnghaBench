; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_find_rl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_find_rl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_rl_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_rl_table = type { i32, %struct.mlx5_rl_entry* }
%struct.mlx5_rate_limit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_rl_entry* (%struct.mlx5_rl_table*, %struct.mlx5_rate_limit*)* @find_rl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_rl_entry* @find_rl_entry(%struct.mlx5_rl_table* %0, %struct.mlx5_rate_limit* %1) #0 {
  %3 = alloca %struct.mlx5_rl_entry*, align 8
  %4 = alloca %struct.mlx5_rl_table*, align 8
  %5 = alloca %struct.mlx5_rate_limit*, align 8
  %6 = alloca %struct.mlx5_rl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_rl_table* %0, %struct.mlx5_rl_table** %4, align 8
  store %struct.mlx5_rate_limit* %1, %struct.mlx5_rate_limit** %5, align 8
  store %struct.mlx5_rl_entry* null, %struct.mlx5_rl_entry** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %55, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %16, i32 0, i32 1
  %18 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %18, i64 %20
  %22 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %21, i32 0, i32 0
  %23 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %5, align 8
  %24 = call i64 @mlx5_rl_are_equal(%struct.TYPE_2__* %22, %struct.mlx5_rate_limit* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %27, i32 0, i32 1
  %29 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %29, i64 %31
  store %struct.mlx5_rl_entry* %32, %struct.mlx5_rl_entry** %3, align 8
  br label %60

33:                                               ; preds = %15
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %37, i32 0, i32 1
  %39 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  %48 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %48, i32 0, i32 1
  %50 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %50, i64 %52
  store %struct.mlx5_rl_entry* %53, %struct.mlx5_rl_entry** %6, align 8
  br label %54

54:                                               ; preds = %47, %36, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %9

58:                                               ; preds = %9
  %59 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  store %struct.mlx5_rl_entry* %59, %struct.mlx5_rl_entry** %3, align 8
  br label %60

60:                                               ; preds = %58, %26
  %61 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %3, align 8
  ret %struct.mlx5_rl_entry* %61
}

declare dso_local i64 @mlx5_rl_are_equal(%struct.TYPE_2__*, %struct.mlx5_rate_limit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
