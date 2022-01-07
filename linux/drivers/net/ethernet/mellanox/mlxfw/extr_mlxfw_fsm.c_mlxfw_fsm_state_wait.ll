; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_fsm_state_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_fsm_state_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxfw_dev*, i32, i32*, i32*)* }
%struct.netlink_ext_ack = type { i32 }

@MLXFW_FSM_STATE_WAIT_ROUNDS = common dso_local global i32 0, align 4
@MLXFW_FSM_STATE_ERR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Firmware flash failed: %s\0A\00", align 1
@mlxfw_fsm_state_err_str = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Firmware flash failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Timeout reached on FSM state change\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MLXFW_FSM_STATE_WAIT_CYCLE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_dev*, i32, i32, %struct.netlink_ext_ack*)* @mlxfw_fsm_state_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxfw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load i32, i32* @MLXFW_FSM_STATE_WAIT_ROUNDS, align 4
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %57, %4
  %16 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlxfw_dev*, i32, i32*, i32*)*, i32 (%struct.mlxfw_dev*, i32, i32*, i32*)** %19, align 8
  %21 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %20(%struct.mlxfw_dev* %21, i32 %22, i32* %11, i32* %10)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %61

28:                                               ; preds = %15
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MLXFW_FSM_STATE_ERR_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32*, i32** @mlxfw_fsm_state_err_str, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %40 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %61

43:                                               ; preds = %28
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %54 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @MLXFW_FSM_STATE_WAIT_CYCLE_MS, align 4
  %59 = call i32 @msleep(i32 %58)
  br label %15

60:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %51, %32, %26
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
