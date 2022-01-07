; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_connect_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_connect_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.timer_list = type { i32 }
%struct.wil6210_priv = type { i32 }

@connect_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Connect timeout detected, disconnect station\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"queue_work of disconnect_worker -> %d\0A\00", align 1
@vif = common dso_local global %struct.wil6210_vif* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wil_connect_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_connect_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %7 = ptrtoint %struct.wil6210_vif* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @connect_timer, align 4
  %10 = call %struct.wil6210_vif* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.wil6210_vif* %10, %struct.wil6210_vif** %3, align 8
  %11 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %12 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %11)
  store %struct.wil6210_priv* %12, %struct.wil6210_priv** %4, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %14 = call i32 @wil_err(%struct.wil6210_priv* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %19 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %18, i32 0, i32 0
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local %struct.wil6210_vif* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
