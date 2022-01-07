; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init_fdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init_fdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*)* @dr_matcher_init_fdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_init_fdb(%struct.mlx5dr_matcher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_matcher*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %3, align 8
  %5 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %6 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %6, i32 0, i32 0
  %8 = call i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %15 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %15, i32 0, i32 1
  %17 = call i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %27

22:                                               ; preds = %20
  %23 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %23, i32 0, i32 0
  %25 = call i32 @dr_matcher_uninit_nic(i32* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %21, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher*, i32*) #1

declare dso_local i32 @dr_matcher_uninit_nic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
