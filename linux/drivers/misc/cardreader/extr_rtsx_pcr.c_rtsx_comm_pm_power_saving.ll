; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_pm_power_saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_pm_power_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i32, i64 }

@L1_SNOOZE_TEST_EN = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rtsx_comm_pm_power_saving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_comm_pm_power_saving(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 0
  store %struct.rtsx_cr_option* %6, %struct.rtsx_cr_option** %3, align 8
  %7 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = load i32, i32* @L1_SNOOZE_TEST_EN, align 4
  %17 = call i64 @rtsx_check_dev_flag(%struct.rtsx_pcr* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %21 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mdelay(i32 %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %30 = load i32, i32* @LTR_L1SS_PWR_GATE_EN, align 4
  %31 = call i64 @rtsx_check_dev_flag(%struct.rtsx_pcr* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = call i32 @rtsx_set_l1off_sub_cfg_d0(%struct.rtsx_pcr* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %38 = call i32 @rtsx_enable_aspm(%struct.rtsx_pcr* %37)
  ret void
}

declare dso_local i64 @rtsx_check_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_set_l1off_sub_cfg_d0(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_enable_aspm(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
