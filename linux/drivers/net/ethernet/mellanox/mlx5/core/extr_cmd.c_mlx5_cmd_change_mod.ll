; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_change_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_change_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i32)* @mlx5_cmd_change_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cmd_change_mod(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  store %struct.mlx5_cmd* %8, %struct.mlx5_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %16, i32 0, i32 2
  %18 = call i32 @down(i32* %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %23, i32 0, i32 3
  %25 = call i32 @down(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %29, i32 0, i32 3
  %31 = call i32 @up(i32* %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %42, %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %39, i32 0, i32 2
  %41 = call i32 @up(i32* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %32

45:                                               ; preds = %32
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
