; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_pm_runtime_allow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_pm_runtime_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.device = type { i32 }

@WIL6210_AUTOSUSPEND_DELAY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_pm_runtime_allow(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @pm_runtime_put_noidle(%struct.device* %6)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load i32, i32* @WIL6210_AUTOSUSPEND_DELAY_MS, align 4
  %10 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %8, i32 %9)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @pm_runtime_use_autosuspend(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @pm_runtime_allow(%struct.device* %13)
  ret void
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_allow(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
