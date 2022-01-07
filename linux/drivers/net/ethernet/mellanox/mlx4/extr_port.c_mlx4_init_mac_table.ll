; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_init_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_init_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_mac_table = type { i32*, i32, i64, i64*, i64*, i32 }

@MLX4_MAX_MAC_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_init_mac_table(%struct.mlx4_dev* %0, %struct.mlx4_mac_table* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_mac_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_mac_table* %1, %struct.mlx4_mac_table** %4, align 8
  %6 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %6, i32 0, i32 5
  %8 = call i32 @mutex_init(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %14, i32 0, i32 4
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
