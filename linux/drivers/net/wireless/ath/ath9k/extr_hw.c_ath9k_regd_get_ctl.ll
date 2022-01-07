; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_regd_get_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_regd_get_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_regulatory = type { i32 }
%struct.ath9k_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTL_11G = common dso_local global i32 0, align 4
@CTL_11A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_regd_get_ctl(%struct.ath_regulatory* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_regulatory*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_regulatory* %0, %struct.ath_regulatory** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath_regulatory*, %struct.ath_regulatory** %3, align 8
  %7 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %8 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ath_regd_get_band_ctl(%struct.ath_regulatory* %6, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %14 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @CTL_11G, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @CTL_11A, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @ath_regd_get_band_ctl(%struct.ath_regulatory*, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
