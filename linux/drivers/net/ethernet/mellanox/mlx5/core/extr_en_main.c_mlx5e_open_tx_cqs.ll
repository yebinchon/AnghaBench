; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_tx_cqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_tx_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_channel_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*)* @mlx5e_open_tx_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_channel_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_channel_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_channel_param* %2, %struct.mlx5e_channel_param** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %21, i32 0, i32 0
  %23 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %17, i32 %20, i32* %22, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %39

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %10

38:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %59

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %54, %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @mlx5e_close_cq(i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mlx5e_open_cq(%struct.mlx5e_channel*, i32, i32*, i32*) #1

declare dso_local i32 @mlx5e_close_cq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
