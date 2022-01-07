; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, i32*, i32, i32, i32 }

@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_channel*)* @mlx5e_deactivate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_deactivate_channel(%struct.mlx5e_channel* %0) #0 {
  %2 = alloca %struct.mlx5e_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %2, align 8
  %4 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %5 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @test_bit(i32 %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %12 = call i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 3
  %16 = call i32 @mlx5e_deactivate_rq(i32* %15)
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %17, i32 0, i32 2
  %19 = call i32 @mlx5e_deactivate_icosq(i32* %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %34, %13
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @mlx5e_deactivate_txqsq(i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %20

37:                                               ; preds = %20
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_deactivate_rq(i32*) #1

declare dso_local i32 @mlx5e_deactivate_icosq(i32*) #1

declare dso_local i32 @mlx5e_deactivate_txqsq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
