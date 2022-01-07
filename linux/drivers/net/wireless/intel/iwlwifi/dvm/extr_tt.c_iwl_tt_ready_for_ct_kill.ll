; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_ready_for_ct_kill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_ready_for_ct_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_priv = type { i32, %struct.iwl_tt_mgmt }
%struct.iwl_tt_mgmt = type { i64 }
%struct.timer_list = type { i32 }

@thermal_throttle = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@IWL_TI_CT_KILL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"entering CT_KILL state when temperature timer expired\0A\00", align 1
@STATUS_CT_KILL = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.iwl_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iwl_tt_ready_for_ct_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_tt_ready_for_ct_kill(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tt_mgmt*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %6 = ptrtoint %struct.iwl_priv* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thermal_throttle, i32 0, i32 0), align 4
  %9 = call %struct.iwl_priv* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.iwl_priv* %9, %struct.iwl_priv** %3, align 8
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 1
  store %struct.iwl_tt_mgmt* %11, %struct.iwl_tt_mgmt** %4, align 8
  %12 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %28 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @STATUS_CT_KILL, align 4
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = call i32 @iwl_perform_ct_kill_task(%struct.iwl_priv* %34, i32 1)
  br label %36

36:                                               ; preds = %17, %24, %18
  ret void
}

declare dso_local %struct.iwl_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_perform_ct_kill_task(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
