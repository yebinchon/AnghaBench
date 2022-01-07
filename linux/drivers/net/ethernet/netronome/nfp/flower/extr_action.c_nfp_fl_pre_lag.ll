; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pre_lag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pre_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.flow_action_entry = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_pre_lag = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"unsupported offload: maximum allowed action list size exceeded at LAG action\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_ACTION_OPCODE_PRE_LAG = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@NFP_FL_SC_ACT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32, %struct.netlink_ext_ack*)* @nfp_fl_pre_lag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_pre_lag(%struct.nfp_app* %0, %struct.flow_action_entry* %1, %struct.nfp_fl_payload* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.flow_action_entry*, align 8
  %9 = alloca %struct.nfp_fl_payload*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfp_fl_pre_lag*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %7, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %8, align 8
  store %struct.nfp_fl_payload* %2, %struct.nfp_fl_payload** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  store i64 16, i64* %12, align 8
  %16 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %17 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %14, align 8
  %19 = load %struct.net_device*, %struct.net_device** %14, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %14, align 8
  %23 = call i32 @netif_is_lag_master(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %5
  store i32 0, i32* %6, align 4
  br label %86

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %36 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %35, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %86

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %44 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %50 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memmove(i32 %48, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %42, %39
  %55 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %56 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.nfp_fl_pre_lag*
  store %struct.nfp_fl_pre_lag* %58, %struct.nfp_fl_pre_lag** %13, align 8
  %59 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %14, align 8
  %61 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %13, align 8
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %63 = call i32 @nfp_flower_lag_populate_pre_action(%struct.nfp_app* %59, %struct.net_device* %60, %struct.nfp_fl_pre_lag* %61, %struct.netlink_ext_ack* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %86

68:                                               ; preds = %54
  %69 = load i32, i32* @NFP_FL_ACTION_OPCODE_PRE_LAG, align 4
  %70 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %13, align 8
  %71 = getelementptr inbounds %struct.nfp_fl_pre_lag, %struct.nfp_fl_pre_lag* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %75 = lshr i64 %73, %74
  %76 = load %struct.nfp_fl_pre_lag*, %struct.nfp_fl_pre_lag** %13, align 8
  %77 = getelementptr inbounds %struct.nfp_fl_pre_lag, %struct.nfp_fl_pre_lag* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %80 = call i32 @cpu_to_be32(i32 %79)
  %81 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %9, align 8
  %82 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %68, %66, %34, %25
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @memmove(i32, i64, i32) #1

declare dso_local i32 @nfp_flower_lag_populate_pre_action(%struct.nfp_app*, %struct.net_device*, %struct.nfp_fl_pre_lag*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
