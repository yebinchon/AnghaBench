; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_load_all_reps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_load_all_reps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }

@NUM_REP_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*)* @esw_offloads_load_all_reps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_offloads_load_all_reps(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @NUM_REP_TYPES, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @__load_reps_all_vport(%struct.mlx5_eswitch* %11, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %23

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %4, align 8
  %27 = icmp sgt i64 %25, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @__unload_reps_all_vport(%struct.mlx5_eswitch* %29, i64 %30)
  br label %24

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @__load_reps_all_vport(%struct.mlx5_eswitch*, i64) #1

declare dso_local i32 @__unload_reps_all_vport(%struct.mlx5_eswitch*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
