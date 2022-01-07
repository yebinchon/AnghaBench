; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_isr_indicate_rf_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_isr_indicate_rf_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s: RF Kill state changed to radio OFF.\0A\00", align 1
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @isr_indicate_rf_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_indicate_rf_kill(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wiphy_rfkill_set_hw_state(i32 %16, i32 1)
  %18 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @system_wq, align 4
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 0
  %28 = load i32, i32* @HZ, align 4
  %29 = call i32 @round_jiffies_relative(i32 %28)
  %30 = call i32 @mod_delayed_work(i32 %25, i32* %27, i32 %29)
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
