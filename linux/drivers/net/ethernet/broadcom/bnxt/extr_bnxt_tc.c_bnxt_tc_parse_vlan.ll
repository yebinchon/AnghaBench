; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_actions = type { i32, i32, i32 }
%struct.flow_action_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BNXT_TC_ACTION_FLAG_POP_VLAN = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_PUSH_VLAN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_actions*, %struct.flow_action_entry*)* @bnxt_tc_parse_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_parse_vlan(%struct.bnxt* %0, %struct.bnxt_tc_actions* %1, %struct.flow_action_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_tc_actions*, align 8
  %7 = alloca %struct.flow_action_entry*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_tc_actions* %1, %struct.bnxt_tc_actions** %6, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %7, align 8
  %8 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %9 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 129, label %11
    i32 128, label %17
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @BNXT_TC_ACTION_FLAG_POP_VLAN, align 4
  %13 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* @BNXT_TC_ACTION_FLAG_PUSH_VLAN, align 4
  %19 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %24 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %31 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %35 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %17, %11
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
