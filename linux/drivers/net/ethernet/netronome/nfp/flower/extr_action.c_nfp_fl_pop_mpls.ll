; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pop_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_pop_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_pop_mpls = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NFP_FL_ACTION_OPCODE_POP_MPLS = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_fl_pop_mpls*, %struct.flow_action_entry*)* @nfp_fl_pop_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_fl_pop_mpls(%struct.nfp_fl_pop_mpls* %0, %struct.flow_action_entry* %1) #0 {
  %3 = alloca %struct.nfp_fl_pop_mpls*, align 8
  %4 = alloca %struct.flow_action_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.nfp_fl_pop_mpls* %0, %struct.nfp_fl_pop_mpls** %3, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %4, align 8
  store i64 24, i64* %5, align 8
  %6 = load i32, i32* @NFP_FL_ACTION_OPCODE_POP_MPLS, align 4
  %7 = load %struct.nfp_fl_pop_mpls*, %struct.nfp_fl_pop_mpls** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_fl_pop_mpls, %struct.nfp_fl_pop_mpls* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %12 = lshr i64 %10, %11
  %13 = load %struct.nfp_fl_pop_mpls*, %struct.nfp_fl_pop_mpls** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_fl_pop_mpls, %struct.nfp_fl_pop_mpls* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %17 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfp_fl_pop_mpls*, %struct.nfp_fl_pop_mpls** %3, align 8
  %21 = getelementptr inbounds %struct.nfp_fl_pop_mpls, %struct.nfp_fl_pop_mpls* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
