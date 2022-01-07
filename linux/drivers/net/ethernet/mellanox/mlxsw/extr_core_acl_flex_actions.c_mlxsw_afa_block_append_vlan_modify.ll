; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_vlan_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_vlan_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MLXSW_AFA_VLAN_CODE = common dso_local global i32 0, align 4
@MLXSW_AFA_VLAN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot append vlan_modify action\00", align 1
@MLXSW_AFA_VLAN_VLAN_TAG_CMD_NOP = common dso_local global i32 0, align 4
@MLXSW_AFA_VLAN_CMD_SET_OUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_vlan_modify(%struct.mlxsw_afa_block* %0, i32 %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_afa_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  %14 = load i32, i32* @MLXSW_AFA_VLAN_CODE, align 4
  %15 = load i32, i32* @MLXSW_AFA_VLAN_SIZE, align 4
  %16 = call i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block* %13, i32 %14, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %6, align 4
  br label %35

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @MLXSW_AFA_VLAN_VLAN_TAG_CMD_NOP, align 4
  %28 = load i32, i32* @MLXSW_AFA_VLAN_CMD_SET_OUTER, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MLXSW_AFA_VLAN_CMD_SET_OUTER, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MLXSW_AFA_VLAN_CMD_SET_OUTER, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @mlxsw_afa_vlan_pack(i8* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mlxsw_afa_vlan_pack(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
