; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32 }
%struct.ath9k_beacon_state = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ATH9K_INT_BMISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_beacon_config*)* @ath9k_beacon_config_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_sta(%struct.ath_hw* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath9k_beacon_state, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %8 = call i32 @ath9k_cmn_beacon_config_sta(%struct.ath_hw* %6, %struct.ath_beacon_config* %7, %struct.ath9k_beacon_state* %5)
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i32 @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw* %16, %struct.ath9k_beacon_state* %5)
  %18 = load i32, i32* @ATH9K_INT_BMISS, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %25)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ath9k_cmn_beacon_config_sta(%struct.ath_hw*, %struct.ath_beacon_config*, %struct.ath9k_beacon_state*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw*, %struct.ath9k_beacon_state*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
