; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_channel_centers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_channel_centers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i64 }
%struct.chan_centers = type { i64, i64, i64 }

@HT40_CHANNEL_CENTER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_get_channel_centers(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.chan_centers* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.chan_centers*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store %struct.chan_centers* %2, %struct.chan_centers** %6, align 8
  %8 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %9 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %16 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %18 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %17, i32 0, i32 1
  store i64 %14, i64* %18, align 8
  %19 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %20 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %19, i32 0, i32 2
  store i64 %14, i64* %20, align 8
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %23 = call i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %33 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 1, i32* %7, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %42 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %45 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %46, %50
  %52 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %53 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %55 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %63 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
