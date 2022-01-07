; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_rm_all_sw_replay_rule_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_rm_all_sw_replay_rule_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_switch_info* }
%struct.ice_switch_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }

@ICE_SW_LKUP_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_rm_all_sw_replay_rule_info(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca %struct.ice_switch_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %6, i32 0, i32 0
  %8 = load %struct.ice_switch_info*, %struct.ice_switch_info** %7, align 8
  store %struct.ice_switch_info* %8, %struct.ice_switch_info** %3, align 8
  %9 = load %struct.ice_switch_info*, %struct.ice_switch_info** %3, align 8
  %10 = icmp ne %struct.ice_switch_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ICE_SW_LKUP_LAST, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.ice_switch_info*, %struct.ice_switch_info** %3, align 8
  %19 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @list_empty(%struct.list_head* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = load %struct.ice_switch_info*, %struct.ice_switch_info** %3, align 8
  %28 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.list_head* %32, %struct.list_head** %5, align 8
  %33 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %34 = load %struct.list_head*, %struct.list_head** %5, align 8
  %35 = call i32 @ice_rem_sw_rule_info(%struct.ice_hw* %33, %struct.list_head* %34)
  br label %36

36:                                               ; preds = %26, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %13

40:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @ice_rem_sw_rule_info(%struct.ice_hw*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
