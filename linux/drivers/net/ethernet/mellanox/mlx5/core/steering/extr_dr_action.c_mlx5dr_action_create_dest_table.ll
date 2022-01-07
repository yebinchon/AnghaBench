; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_dest_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_dest_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5dr_table* }
%struct.mlx5dr_table = type { i32 }

@DR_ACTION_TYP_FT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_action_create_dest_table(%struct.mlx5dr_table* %0) #0 {
  %2 = alloca %struct.mlx5dr_action*, align 8
  %3 = alloca %struct.mlx5dr_table*, align 8
  %4 = alloca %struct.mlx5dr_action*, align 8
  store %struct.mlx5dr_table* %0, %struct.mlx5dr_table** %3, align 8
  %5 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %5, i32 0, i32 0
  %7 = call i32 @refcount_inc(i32* %6)
  %8 = load i32, i32* @DR_ACTION_TYP_FT, align 4
  %9 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %8)
  store %struct.mlx5dr_action* %9, %struct.mlx5dr_action** %4, align 8
  %10 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %11 = icmp ne %struct.mlx5dr_action* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %15 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.mlx5dr_table* %14, %struct.mlx5dr_table** %17, align 8
  %18 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  store %struct.mlx5dr_action* %18, %struct.mlx5dr_action** %2, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %20, i32 0, i32 0
  %22 = call i32 @refcount_dec(i32* %21)
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %2, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %2, align 8
  ret %struct.mlx5dr_action* %24
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
