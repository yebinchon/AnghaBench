; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_poll_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_poll_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_work_ent = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MLX5_CMD_TIMEOUT_MSEC = common dso_local global i64 0, align 8
@CMD_OWNER_HW = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cmd_work_ent*)* @poll_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_timeout(%struct.mlx5_cmd_work_ent* %0) #0 {
  %2 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_cmd_work_ent* %0, %struct.mlx5_cmd_work_ent** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @MLX5_CMD_TIMEOUT_MSEC, align 8
  %7 = add nsw i64 %6, 1000
  %8 = call i64 @msecs_to_jiffies(i64 %7)
  %9 = add i64 %5, %8
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %26, %1
  %11 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CMD_OWNER_HW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %36

24:                                               ; preds = %10
  %25 = call i32 (...) @cond_resched()
  br label %26

26:                                               ; preds = %24
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %10, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %21
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
