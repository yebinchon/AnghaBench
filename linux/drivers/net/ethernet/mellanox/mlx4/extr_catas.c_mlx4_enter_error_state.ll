; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_mlx4_enter_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_catas.c_mlx4_enter_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev_persistent = type { i32, i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mlx4_internal_err_reset = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"device is going to be reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device was reset successfully\0A\00", align 1
@MLX4_DEV_EVENT_CATASTROPHIC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_enter_error_state(%struct.mlx4_dev_persistent* %0) #0 {
  %2 = alloca %struct.mlx4_dev_persistent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  store %struct.mlx4_dev_persistent* %0, %struct.mlx4_dev_persistent** %2, align 8
  %5 = load i32, i32* @mlx4_internal_err_reset, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %73

8:                                                ; preds = %1
  %9 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %69

19:                                               ; preds = %8
  %20 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %20, i32 0, i32 2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %21, align 8
  store %struct.mlx4_dev* %22, %struct.mlx4_dev** %4, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %24 = call i32 @mlx4_err(%struct.mlx4_dev* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %26 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = call i32 @mlx4_reset_slave(%struct.mlx4_dev* %29)
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %33 = call i32 @mlx4_crdump_collect(%struct.mlx4_dev* %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %35 = call i32 @mlx4_reset_master(%struct.mlx4_dev* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %41 = call i32 @mlx4_err(%struct.mlx4_dev* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %53

42:                                               ; preds = %36
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_channel_offline(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = call i32 @BUG_ON(i32 1)
  br label %52

52:                                               ; preds = %50, %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %62 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %65 = load i32, i32* @MLX4_DEV_EVENT_CATASTROPHIC_ERROR, align 4
  %66 = call i32 @mlx4_dispatch_event(%struct.mlx4_dev* %64, i32 %65, i32 0)
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %68 = call i32 @mlx4_cmd_wake_completions(%struct.mlx4_dev* %67)
  br label %73

69:                                               ; preds = %18
  %70 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %2, align 8
  %71 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %69, %53, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_reset_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_crdump_collect(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_reset_master(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_dispatch_event(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd_wake_completions(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
