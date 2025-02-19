; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_adjust_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_adjust_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32*, i32)* @mlx4_adjust_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_adjust_port(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MLX4_PROT_ETH, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLX4_STEERING_MODE_B0, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22, %15
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %30, i32 %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %22
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
