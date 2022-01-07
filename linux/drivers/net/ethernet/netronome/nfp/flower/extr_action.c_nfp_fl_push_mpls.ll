; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_push_mpls = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_ACTION_OPCODE_PUSH_MPLS = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@ACT_MPLS_BOS_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_S_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"unsupported offload: BOS field must explicitly be set for MPLS push\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACT_MPLS_TC_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_TC_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_push_mpls*, %struct.flow_action_entry*, %struct.netlink_ext_ack*)* @nfp_fl_push_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_push_mpls(%struct.nfp_fl_push_mpls* %0, %struct.flow_action_entry* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_fl_push_mpls*, align 8
  %6 = alloca %struct.flow_action_entry*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_fl_push_mpls* %0, %struct.nfp_fl_push_mpls** %5, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i64 24, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @NFP_FL_ACTION_OPCODE_PUSH_MPLS, align 4
  %11 = load %struct.nfp_fl_push_mpls*, %struct.nfp_fl_push_mpls** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_fl_push_mpls, %struct.nfp_fl_push_mpls* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %16 = lshr i64 %14, %15
  %17 = load %struct.nfp_fl_push_mpls*, %struct.nfp_fl_push_mpls** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_fl_push_mpls, %struct.nfp_fl_push_mpls* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %21 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ACT_MPLS_BOS_NOT_SET, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %28 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %3
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %83

40:                                               ; preds = %26
  %41 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %42 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACT_MPLS_TC_NOT_SET, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %49 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MPLS_LS_TC_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %58 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MPLS_LS_LABEL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %66 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %74 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfp_fl_push_mpls*, %struct.nfp_fl_push_mpls** %5, align 8
  %78 = getelementptr inbounds %struct.nfp_fl_push_mpls, %struct.nfp_fl_push_mpls* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @cpu_to_be32(i32 %79)
  %81 = load %struct.nfp_fl_push_mpls*, %struct.nfp_fl_push_mpls** %5, align 8
  %82 = getelementptr inbounds %struct.nfp_fl_push_mpls, %struct.nfp_fl_push_mpls* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %56, %35
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
