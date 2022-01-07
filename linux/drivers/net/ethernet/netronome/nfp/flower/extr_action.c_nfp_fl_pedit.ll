; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pedit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_action_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.nfp_flower_pedit_acts = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_ACTION_OPCODE_SET_TCP = common dso_local global i32 0, align 4
@NFP_FL_ACTION_OPCODE_SET_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unsupported offload: pedit on unsupported header\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_action_entry*, %struct.flow_cls_offload*, i8*, i32*, i32*, %struct.nfp_flower_pedit_acts*, %struct.netlink_ext_ack*)* @nfp_fl_pedit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_pedit(%struct.flow_action_entry* %0, %struct.flow_cls_offload* %1, i8* %2, i32* %3, i32* %4, %struct.nfp_flower_pedit_acts* %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.flow_action_entry*, align 8
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nfp_flower_pedit_acts*, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.flow_action_entry* %0, %struct.flow_action_entry** %9, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.nfp_flower_pedit_acts* %5, %struct.nfp_flower_pedit_acts** %14, align 8
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %18 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %19 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %23 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %16, align 4
  switch i32 %26, label %70 [
    i32 132, label %27
    i32 131, label %34
    i32 130, label %43
    i32 129, label %54
    i32 128, label %62
  ]

27:                                               ; preds = %7
  %28 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %31 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %30, i32 0, i32 6
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %33 = call i32 @nfp_fl_set_eth(%struct.flow_action_entry* %28, i32 %29, i32* %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %8, align 4
  br label %75

34:                                               ; preds = %7
  %35 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %38 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %37, i32 0, i32 5
  %39 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %39, i32 0, i32 4
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %42 = call i32 @nfp_fl_set_ip4(%struct.flow_action_entry* %35, i32 %36, i32* %38, i32* %40, %struct.netlink_ext_ack* %41)
  store i32 %42, i32* %8, align 4
  br label %75

43:                                               ; preds = %7
  %44 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %47 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %46, i32 0, i32 3
  %48 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %48, i32 0, i32 2
  %50 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %51 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %50, i32 0, i32 1
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %53 = call i32 @nfp_fl_set_ip6(%struct.flow_action_entry* %44, i32 %45, i32* %47, i32* %49, i32* %51, %struct.netlink_ext_ack* %52)
  store i32 %53, i32* %8, align 4
  br label %75

54:                                               ; preds = %7
  %55 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %58 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %57, i32 0, i32 0
  %59 = load i32, i32* @NFP_FL_ACTION_OPCODE_SET_TCP, align 4
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %61 = call i32 @nfp_fl_set_tport(%struct.flow_action_entry* %55, i32 %56, i32* %58, i32 %59, %struct.netlink_ext_ack* %60)
  store i32 %61, i32* %8, align 4
  br label %75

62:                                               ; preds = %7
  %63 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %14, align 8
  %66 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %65, i32 0, i32 0
  %67 = load i32, i32* @NFP_FL_ACTION_OPCODE_SET_UDP, align 4
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %69 = call i32 @nfp_fl_set_tport(%struct.flow_action_entry* %63, i32 %64, i32* %66, i32 %67, %struct.netlink_ext_ack* %68)
  store i32 %69, i32* %8, align 4
  br label %75

70:                                               ; preds = %7
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %72 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %62, %54, %43, %34, %27
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @nfp_fl_set_eth(%struct.flow_action_entry*, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_set_ip4(%struct.flow_action_entry*, i32, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_set_ip6(%struct.flow_action_entry*, i32, i32*, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_set_tport(%struct.flow_action_entry*, i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
