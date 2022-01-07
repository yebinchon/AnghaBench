; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_single_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_single_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc* (%struct.mlx5_core_dev*)* @mlx5_fc_single_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc* @mlx5_fc_single_alloc(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_fc*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fc*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlx5_fc* @kzalloc(i32 4, i32 %6)
  store %struct.mlx5_fc* %7, %struct.mlx5_fc** %4, align 8
  %8 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %9 = icmp ne %struct.mlx5_fc* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mlx5_fc* @ERR_PTR(i32 %12)
  store %struct.mlx5_fc* %13, %struct.mlx5_fc** %2, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %16, i32 0, i32 0
  %18 = call i32 @mlx5_cmd_fc_alloc(%struct.mlx5_core_dev* %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %23 = call i32 @kfree(%struct.mlx5_fc* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.mlx5_fc* @ERR_PTR(i32 %24)
  store %struct.mlx5_fc* %25, %struct.mlx5_fc** %2, align 8
  br label %28

26:                                               ; preds = %14
  %27 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  store %struct.mlx5_fc* %27, %struct.mlx5_fc** %2, align 8
  br label %28

28:                                               ; preds = %26, %21, %10
  %29 = load %struct.mlx5_fc*, %struct.mlx5_fc** %2, align 8
  ret %struct.mlx5_fc* %29
}

declare dso_local %struct.mlx5_fc* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_fc* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_cmd_fc_alloc(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_fc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
