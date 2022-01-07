; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_bg_ucode_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_bg_ucode_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@ucode_trace = common dso_local global i32 0, align 4
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@UCODE_TRACE_PERIOD = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.iwl_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iwl_bg_ucode_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_bg_ucode_trace(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %5 = ptrtoint %struct.iwl_priv* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @ucode_trace, align 4
  %8 = call %struct.iwl_priv* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.iwl_priv* %8, %struct.iwl_priv** %3, align 8
  %9 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = call i32 @iwl_continuous_event_trace(%struct.iwl_priv* %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @UCODE_TRACE_PERIOD, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @mod_timer(i32* %25, i64 %29)
  br label %31

31:                                               ; preds = %14, %21, %15
  ret void
}

declare dso_local %struct.iwl_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_continuous_event_trace(%struct.iwl_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
