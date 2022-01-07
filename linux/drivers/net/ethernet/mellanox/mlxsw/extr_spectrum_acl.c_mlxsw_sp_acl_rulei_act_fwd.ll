; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_act_fwd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_act_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }

@.str = private unnamed_addr constant [22 x i8] c"Invalid output device\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_rulei_act_fwd(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule_info* %1, %struct.net_device* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_rule_info* %1, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @mlxsw_sp_port_dev_check(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %21 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %25)
  store %struct.mlxsw_sp_port* %26, %struct.mlxsw_sp_port** %10, align 8
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 1
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %28, align 8
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = icmp ne %struct.mlxsw_sp* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %34 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %24
  %38 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %10, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %42

41:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %49 = call i32 @mlxsw_afa_block_append_fwd(i32 %45, i64 %46, i32 %47, %struct.netlink_ext_ack* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %32, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @mlxsw_sp_port_dev_check(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_afa_block_append_fwd(i32, i64, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
