; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_wakeup_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_wakeup_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.timer_list = type { i32 }

@wakeup_timer = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Firmware wakeup failed\0A\00", align 1
@MWIFIEX_HW_STATUS_RESET = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.mwifiex_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wakeup_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %5 = ptrtoint %struct.mwifiex_adapter* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @wakeup_timer, align 4
  %8 = call %struct.mwifiex_adapter* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %3, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %9, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MWIFIEX_HW_STATUS_RESET, align 4
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %16 = call i32 @mwifiex_cancel_all_pending_cmd(%struct.mwifiex_adapter* %15)
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.mwifiex_adapter.0*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %25, align 8
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = bitcast %struct.mwifiex_adapter* %27 to %struct.mwifiex_adapter.0*
  %29 = call i32 %26(%struct.mwifiex_adapter.0* %28)
  br label %30

30:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.mwifiex_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_cancel_all_pending_cmd(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
