; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_pm_full_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_pm_full_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i64 }

@LTR_L1SS_PWR_GATE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rtsx_comm_pm_full_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_comm_pm_full_on(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %4, i32 0, i32 0
  store %struct.rtsx_cr_option* %5, %struct.rtsx_cr_option** %3, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = call i32 @rtsx_disable_aspm(%struct.rtsx_pcr* %6)
  %8 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %15 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = load i32, i32* @LTR_L1SS_PWR_GATE_EN, align 4
  %21 = call i64 @rtsx_check_dev_flag(%struct.rtsx_pcr* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = call i32 @rtsx_set_l1off_sub_cfg_d0(%struct.rtsx_pcr* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr*, i32) #1

declare dso_local i64 @rtsx_check_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_set_l1off_sub_cfg_d0(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
