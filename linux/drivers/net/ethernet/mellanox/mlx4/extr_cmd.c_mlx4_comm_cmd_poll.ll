; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_comm_cmd_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_comm_cmd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Communication channel is not idle - my toggle is %d (cmd:0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CMD_STAT_INTERNAL_ERR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX4_COMM_CMD_RESET = common dso_local global i32 0, align 4
@MLX4_DELAY_RESET_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Communication channel command 0x%x timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i64)* @mlx4_comm_cmd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_comm_cmd_poll(%struct.mlx4_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = call i32 @comm_pending(%struct.mlx4_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_warn(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %4
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @down(i32* %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @mlx4_comm_cmd_post(%struct.mlx4_dev* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %41 = call i32 @mlx4_status_to_errno(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %87

42:                                               ; preds = %29
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @msecs_to_jiffies(i64 %43)
  %45 = load i64, i64* @jiffies, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %58, %42
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %49 = call i32 @comm_pending(%struct.mlx4_dev* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @time_before(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ false, %47 ], [ %55, %51 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 (...) @cond_resched()
  br label %47

60:                                               ; preds = %56
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %62 = call i32 @comm_pending(%struct.mlx4_dev* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @MLX4_DELAY_RESET_SLAVE, align 4
  store i32 %70, i32* %12, align 4
  br label %87

71:                                               ; preds = %65
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_warn(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @CMD_STAT_INTERNAL_ERR, align 4
  %76 = call i32 @mlx4_status_to_errno(i32 %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mlx4_enter_error_state(i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %86, %69, %39
  %88 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %89 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @up(i32* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @comm_pending(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @mlx4_comm_cmd_post(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_status_to_errno(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mlx4_enter_error_state(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
