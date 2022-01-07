; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_tport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_tport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_action_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfp_fl_set_tport = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"unsupported offload: pedit on unsupported section of L4 header\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unsupported offload: invalid pedit L4 action\00", align 1
@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_action_entry*, i32, %struct.nfp_fl_set_tport*, i32, %struct.netlink_ext_ack*)* @nfp_fl_set_tport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_set_tport(%struct.flow_action_entry* %0, i32 %1, %struct.nfp_fl_set_tport* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_action_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_fl_set_tport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.flow_action_entry* %0, %struct.flow_action_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nfp_fl_set_tport* %2, %struct.nfp_fl_set_tport** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %18 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %65

21:                                               ; preds = %5
  %22 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %23 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %28 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %38 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %21
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %9, align 8
  %45 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %9, align 8
  %48 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nfp_fl_set_helper32(i32 %42, i32 %43, i32 %46, i32 %49)
  %51 = call i32 @cpu_to_be16(i32 0)
  %52 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %9, align 8
  %53 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %9, align 8
  %56 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %59 = zext i32 %58 to i64
  %60 = lshr i64 20, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.nfp_fl_set_tport*, %struct.nfp_fl_set_tport** %9, align 8
  %63 = getelementptr inbounds %struct.nfp_fl_set_tport, %struct.nfp_fl_set_tport* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %41, %36, %16
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_fl_set_helper32(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
