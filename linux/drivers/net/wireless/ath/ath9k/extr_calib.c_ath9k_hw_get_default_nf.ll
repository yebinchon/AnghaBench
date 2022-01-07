; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_get_default_nf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_get_default_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.TYPE_2__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_hw*, %struct.ath9k_channel*, i32)* @ath9k_hw_get_default_nf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath9k_hw_get_default_nf(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %11 = call %struct.TYPE_2__* @ath9k_hw_get_nf_limits(%struct.ath_hw* %9, %struct.ath9k_channel* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %4, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %25 = call %struct.TYPE_2__* @ath9k_hw_get_nf_limits(%struct.ath_hw* %23, %struct.ath9k_channel* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %20
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local %struct.TYPE_2__* @ath9k_hw_get_nf_limits(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
