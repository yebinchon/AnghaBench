; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_resume_radio_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_resume_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Enabling PCIe IRQ\0A\00", align 1
@wil_status_suspended = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_resume_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_resume_radio_off(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %8 = call i32 @wil_enable_irq(%struct.wil6210_priv* %7)
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %13 = call i32 @wil_has_active_ifaces(%struct.wil6210_priv* %12, i32 1, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %21 = call i32 @wil_up(%struct.wil6210_priv* %20)
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @wil_status_suspended, align 4
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clear_bit(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_enable_irq(%struct.wil6210_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_up(%struct.wil6210_priv*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
