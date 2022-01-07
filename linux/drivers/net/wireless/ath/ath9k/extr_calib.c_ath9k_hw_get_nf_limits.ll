; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_get_nf_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_get_nf_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_nf_limits = type { i32 }
%struct.ath_hw = type { %struct.ath_nf_limits, %struct.ath_nf_limits }
%struct.ath9k_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_nf_limits* (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_get_nf_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_nf_limits* @ath9k_hw_get_nf_limits(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath_nf_limits*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = icmp ne %struct.ath9k_channel* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %10 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  store %struct.ath_nf_limits* %14, %struct.ath_nf_limits** %5, align 8
  br label %18

15:                                               ; preds = %8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  store %struct.ath_nf_limits* %17, %struct.ath_nf_limits** %5, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %5, align 8
  ret %struct.ath_nf_limits* %19
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
