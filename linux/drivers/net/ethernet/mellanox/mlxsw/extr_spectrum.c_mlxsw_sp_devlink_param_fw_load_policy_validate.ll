; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_devlink_param_fw_load_policy_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_devlink_param_fw_load_policy_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%union.devlink_param_value = type { i64 }

@DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER = common dso_local global i64 0, align 8
@DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"'fw_load_policy' must be 'driver' or 'flash'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i64, %struct.netlink_ext_ack*)* @mlxsw_sp_devlink_param_fw_load_policy_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_devlink_param_fw_load_policy_validate(%struct.devlink* %0, i32 %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.devlink_param_value, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %6, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = bitcast %union.devlink_param_value* %6 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = bitcast %union.devlink_param_value* %6 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
