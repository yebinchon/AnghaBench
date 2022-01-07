; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_eth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_action_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfp_fl_set_eth = type { %struct.TYPE_4__, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"unsupported offload: invalid pedit ethernet action\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_ACTION_OPCODE_SET_ETHERNET = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_action_entry*, i32, %struct.nfp_fl_set_eth*, %struct.netlink_ext_ack*)* @nfp_fl_set_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_set_eth(%struct.flow_action_entry* %0, i32 %1, %struct.nfp_fl_set_eth* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_action_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_fl_set_eth*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.flow_action_entry* %0, %struct.flow_action_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nfp_fl_set_eth* %2, %struct.nfp_fl_set_eth** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = mul nsw i32 %14, 2
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %19 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %72

22:                                               ; preds = %4
  %23 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %24 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  store i32 %27, i32* %11, align 4
  %28 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %29 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %39 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %72

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %8, align 8
  %46 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %8, align 8
  %52 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @nfp_fl_set_helper32(i32 %43, i32 %44, i32* %50, i32* %56)
  %58 = call i32 @cpu_to_be16(i32 0)
  %59 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %8, align 8
  %60 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @NFP_FL_ACTION_OPCODE_SET_ETHERNET, align 4
  %62 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %8, align 8
  %63 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %66 = zext i32 %65 to i64
  %67 = lshr i64 32, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.nfp_fl_set_eth*, %struct.nfp_fl_set_eth** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_fl_set_eth, %struct.nfp_fl_set_eth* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %42, %37, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_fl_set_helper32(i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
