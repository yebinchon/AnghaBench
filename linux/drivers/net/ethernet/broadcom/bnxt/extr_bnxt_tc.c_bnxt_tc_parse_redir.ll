; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_redir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_parse_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_actions = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.flow_action_entry = type { %struct.net_device* }

@.str = private unnamed_addr constant [24 x i8] c"no dev in mirred action\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_FWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_actions*, %struct.flow_action_entry*)* @bnxt_tc_parse_redir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_parse_redir(%struct.bnxt* %0, %struct.bnxt_tc_actions* %1, %struct.flow_action_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_tc_actions*, align 8
  %7 = alloca %struct.flow_action_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_tc_actions* %1, %struct.bnxt_tc_actions** %6, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %7, align 8
  %9 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %10 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_info(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* @BNXT_TC_ACTION_FLAG_FWD, align 4
  %23 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %24 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %28, i32 0, i32 0
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
