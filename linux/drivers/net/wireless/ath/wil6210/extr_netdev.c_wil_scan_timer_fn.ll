; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_scan_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_scan_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.timer_list = type { i32 }
%struct.wil6210_priv = type { i32 }

@scan_timer = common dso_local global i32 0, align 4
@wil_status_fwready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Scan timeout detected, start fw error recovery\0A\00", align 1
@vif = common dso_local global %struct.wil6210_vif* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wil_scan_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_scan_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %6 = ptrtoint %struct.wil6210_vif* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @scan_timer, align 4
  %9 = call %struct.wil6210_vif* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.wil6210_vif* %9, %struct.wil6210_vif** %3, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %10)
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %4, align 8
  %12 = load i32, i32* @wil_status_fwready, align 4
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clear_bit(i32 %12, i32 %15)
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %18 = call i32 @wil_err(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %20 = call i32 @wil_fw_error_recovery(%struct.wil6210_priv* %19)
  ret void
}

declare dso_local %struct.wil6210_vif* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_fw_error_recovery(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
