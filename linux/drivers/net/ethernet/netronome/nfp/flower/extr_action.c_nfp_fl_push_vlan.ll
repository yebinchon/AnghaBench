; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_push_vlan = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@NFP_FL_ACTION_OPCODE_PUSH_VLAN = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@NFP_FL_PUSH_VLAN_PRIO = common dso_local global i32 0, align 4
@NFP_FL_PUSH_VLAN_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_fl_push_vlan*, %struct.flow_action_entry*)* @nfp_fl_push_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_fl_push_vlan(%struct.nfp_fl_push_vlan* %0, %struct.flow_action_entry* %1) #0 {
  %3 = alloca %struct.nfp_fl_push_vlan*, align 8
  %4 = alloca %struct.flow_action_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_fl_push_vlan* %0, %struct.nfp_fl_push_vlan** %3, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %4, align 8
  store i64 32, i64* %5, align 8
  %7 = load i32, i32* @NFP_FL_ACTION_OPCODE_PUSH_VLAN, align 4
  %8 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %13 = lshr i64 %11, %12
  %14 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %3, align 8
  %18 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %20 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NFP_FL_PUSH_VLAN_PRIO, align 4
  %26 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %27 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FIELD_PREP(i32 %25, i32 %29)
  %31 = load i32, i32* @NFP_FL_PUSH_VLAN_VID, align 4
  %32 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %33 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FIELD_PREP(i32 %31, i32 %35)
  %37 = or i32 %30, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cpu_to_be16(i32 %38)
  %40 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %3, align 8
  %41 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
