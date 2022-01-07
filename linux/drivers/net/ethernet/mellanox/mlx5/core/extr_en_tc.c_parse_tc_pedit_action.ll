; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tc_pedit_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tc_pedit_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_action_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.pedit_headers_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@FLOW_ACTION_MANGLE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_ACT_MANGLE_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"legacy pedit isn't offloaded\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"The pedit offload action is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_action_entry*, i32, %struct.mlx5e_tc_flow_parse_attr*, %struct.pedit_headers_action*, %struct.netlink_ext_ack*)* @parse_tc_pedit_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tc_pedit_action(%struct.mlx5e_priv* %0, %struct.flow_action_entry* %1, i32 %2, %struct.mlx5e_tc_flow_parse_attr* %3, %struct.pedit_headers_action* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.flow_action_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %12 = alloca %struct.pedit_headers_action*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %8, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.mlx5e_tc_flow_parse_attr* %3, %struct.mlx5e_tc_flow_parse_attr** %11, align 8
  store %struct.pedit_headers_action* %4, %struct.pedit_headers_action** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %20 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %21 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FLOW_ACTION_MANGLE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %31 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %19, align 8
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* @FLOW_ACT_MANGLE_UNSPEC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %6
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %41 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %84

42:                                               ; preds = %6
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mlx5e_flow_namespace_max_modify_action(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %51 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %84

52:                                               ; preds = %42
  %53 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %54 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %16, align 4
  %57 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %58 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %62 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %18, align 4
  %65 = load i64, i64* %19, align 8
  %66 = load i32, i32* %16, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.pedit_headers_action*, %struct.pedit_headers_action** %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %70, i64 %71
  %73 = call i32 @set_pedit_val(i64 %65, i32 %67, i32 %68, i32 %69, %struct.pedit_headers_action* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %52
  br label %84

77:                                               ; preds = %52
  %78 = load %struct.pedit_headers_action*, %struct.pedit_headers_action** %12, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %78, i64 %79
  %81 = getelementptr inbounds %struct.pedit_headers_action, %struct.pedit_headers_action* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %7, align 4
  br label %86

84:                                               ; preds = %76, %49, %39
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlx5e_flow_namespace_max_modify_action(i32, i32) #1

declare dso_local i32 @set_pedit_val(i64, i32, i32, i32, %struct.pedit_headers_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
