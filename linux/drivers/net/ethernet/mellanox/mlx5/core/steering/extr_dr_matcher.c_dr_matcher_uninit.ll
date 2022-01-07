; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_matcher*)* @dr_matcher_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_matcher_uninit(%struct.mlx5dr_matcher* %0) #0 {
  %2 = alloca %struct.mlx5dr_matcher*, align 8
  %3 = alloca %struct.mlx5dr_domain*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %2, align 8
  %4 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  store %struct.mlx5dr_domain* %8, %struct.mlx5dr_domain** %3, align 8
  %9 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 129, label %12
    i32 128, label %16
    i32 130, label %20
  ]

12:                                               ; preds = %1
  %13 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %13, i32 0, i32 1
  %15 = call i32 @dr_matcher_uninit_nic(i32* %14)
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %17, i32 0, i32 0
  %19 = call i32 @dr_matcher_uninit_nic(i32* %18)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %2, align 8
  %22 = call i32 @dr_matcher_uninit_fdb(%struct.mlx5dr_matcher* %21)
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @WARN_ON(i32 1)
  br label %25

25:                                               ; preds = %23, %20, %16, %12
  ret void
}

declare dso_local i32 @dr_matcher_uninit_nic(i32*) #1

declare dso_local i32 @dr_matcher_uninit_fdb(%struct.mlx5dr_matcher*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
