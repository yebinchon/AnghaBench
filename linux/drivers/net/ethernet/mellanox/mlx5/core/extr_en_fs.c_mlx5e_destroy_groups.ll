; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_destroy_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_destroy_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_flow_table = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_flow_table*)* @mlx5e_destroy_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_destroy_groups(%struct.mlx5e_flow_table* %0) #0 {
  %2 = alloca %struct.mlx5e_flow_table*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_flow_table* %0, %struct.mlx5e_flow_table** %2, align 8
  %4 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @IS_ERR_OR_NULL(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %11
  %22 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mlx5_destroy_flow_group(i32* %28)
  br label %30

30:                                               ; preds = %21, %11
  %31 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mlx5_destroy_flow_group(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
