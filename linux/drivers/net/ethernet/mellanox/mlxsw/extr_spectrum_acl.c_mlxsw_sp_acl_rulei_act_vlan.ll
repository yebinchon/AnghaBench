; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_act_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_act_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@FLOW_ACTION_VLAN_MANGLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported VLAN protocol\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported VLAN protocol %#04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unsupported VLAN action\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unsupported VLAN action\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_rulei_act_vlan(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule_info* %1, i64 %2, i32 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp_acl_rule_info* %1, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @FLOW_ACTION_VLAN_MANGLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %24 [
    i32 128, label %22
    i32 129, label %23
  ]

22:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  br label %36

23:                                               ; preds = %20
  store i32 1, i32* %16, align 4
  br label %36

24:                                               ; preds = %20
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %56

36:                                               ; preds = %23, %22
  %37 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %44 = call i32 @mlxsw_afa_block_append_vlan_modify(i32 %39, i32 %40, i32 %41, i32 %42, %struct.netlink_ext_ack* %43)
  store i32 %44, i32* %8, align 4
  br label %56

45:                                               ; preds = %7
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %47 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %45, %36, %24
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mlxsw_afa_block_append_vlan_modify(i32, i32, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
