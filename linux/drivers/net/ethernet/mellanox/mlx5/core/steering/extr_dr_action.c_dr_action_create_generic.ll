; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_action* (i32)* @dr_action_create_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_action* @dr_action_create_generic(i32 %0) #0 {
  %2 = alloca %struct.mlx5dr_action*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_action*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx5dr_action* @kzalloc(i32 8, i32 %5)
  store %struct.mlx5dr_action* %6, %struct.mlx5dr_action** %4, align 8
  %7 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %8 = icmp ne %struct.mlx5dr_action* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %14, i32 0, i32 1
  %16 = call i32 @refcount_set(i32* %15, i32 1)
  %17 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  store %struct.mlx5dr_action* %17, %struct.mlx5dr_action** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %2, align 8
  ret %struct.mlx5dr_action* %19
}

declare dso_local %struct.mlx5dr_action* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
