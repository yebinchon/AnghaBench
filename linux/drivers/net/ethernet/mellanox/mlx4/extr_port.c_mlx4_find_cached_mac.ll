; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_find_cached_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_find_cached_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32*, i32* }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@MLX4_MAX_MAC_NUM = common dso_local global i32 0, align 4
@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_find_cached_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx4_port_info*, align 8
  %11 = alloca %struct.mlx4_mac_table*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %16, i64 %17
  store %struct.mlx4_port_info* %18, %struct.mlx4_port_info** %10, align 8
  %19 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %19, i32 0, i32 0
  store %struct.mlx4_mac_table* %20, %struct.mlx4_mac_table** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %52, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %52

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MLX4_MAC_MASK, align 4
  %38 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %11, align 8
  %39 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be64_to_cpu(i32 %44)
  %46 = and i32 %37, %45
  %47 = icmp eq i32 %36, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %58

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %21

55:                                               ; preds = %21
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
