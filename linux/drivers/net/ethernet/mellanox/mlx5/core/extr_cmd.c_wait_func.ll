; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_wait_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_wait_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { i64 }
%struct.mlx5_cmd_work_ent = type { i32, i64, i32, i32, i32, i64 }

@MLX5_CMD_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@CMD_MODE_POLLING = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s(0x%x) timeout. Will cause a leak of a command resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"err %d, delivery status %s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*)* @wait_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_func(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd_work_ent* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_cmd_work_ent* %1, %struct.mlx5_cmd_work_ent** %4, align 8
  %8 = load i32, i32* @MLX5_CMD_TIMEOUT_MSEC, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  store %struct.mlx5_cmd* %11, %struct.mlx5_cmd** %6, align 8
  %12 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMD_MODE_POLLING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %2
  %23 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %23, i32 0, i32 4
  %25 = call i32 @wait_for_completion(i32* %24)
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %27, i32 0, i32 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @wait_for_completion_timeout(i32* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %38 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 1, %40
  %42 = call i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev* %37, i64 %41, i32 1)
  br label %43

43:                                               ; preds = %32, %26
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @msg_to_opcode(i32 %56)
  %58 = call i32 @mlx5_command_str(i32 %57)
  %59 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @msg_to_opcode(i32 %61)
  %63 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %52, %44
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @deliv_status_to_str(i32 %69)
  %71 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mlx5_cmd_comp_handler(%struct.mlx5_core_dev*, i64, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_command_str(i32) #1

declare dso_local i32 @msg_to_opcode(i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @deliv_status_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
