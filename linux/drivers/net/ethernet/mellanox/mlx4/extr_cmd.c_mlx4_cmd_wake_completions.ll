; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_wake_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_wake_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.mlx4_cmd_context* }
%struct.mlx4_cmd_context = type { i32, i32, i32 }

@CMD_STAT_INTERNAL_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cmd_wake_completions(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca %struct.mlx4_cmd_context*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %3, align 8
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %14, align 8
  %16 = icmp ne %struct.mlx4_cmd_context* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %29, i64 %31
  store %struct.mlx4_cmd_context* %32, %struct.mlx4_cmd_context** %4, align 8
  %33 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %34 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %37 = call i32 @mlx4_status_to_errno(i32 %36)
  %38 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %40, i32 0, i32 0
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %18

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx4_status_to_errno(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
