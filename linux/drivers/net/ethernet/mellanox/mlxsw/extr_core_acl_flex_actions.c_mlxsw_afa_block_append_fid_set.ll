; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_fid_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_fid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MLXSW_AFA_VIRFWD_CODE = common dso_local global i32 0, align 4
@MLXSW_AFA_VIRFWD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot append fid_set action\00", align 1
@MLXSW_AFA_VIRFWD_FID_CMD_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_fid_set(%struct.mlxsw_afa_block* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_afa_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %10 = load i32, i32* @MLXSW_AFA_VIRFWD_CODE, align 4
  %11 = load i32, i32* @MLXSW_AFA_VIRFWD_SIZE, align 4
  %12 = call i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block* %9, i32 %10, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @MLXSW_AFA_VIRFWD_FID_CMD_SET, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mlxsw_afa_virfwd_pack(i8* %22, i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mlxsw_afa_virfwd_pack(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
