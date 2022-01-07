; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channels = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_close_channels(%struct.mlx5e_channels* %0) #0 {
  %2 = alloca %struct.mlx5e_channels*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_channels* %0, %struct.mlx5e_channels** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlx5e_close_channel(i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  ret void
}

declare dso_local i32 @mlx5e_close_channel(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
