; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_rf_alloc_ext_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_rf_alloc_ext_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ar5008_hw_rf_alloc_ext_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_rf_alloc_ext_banks(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @devm_kzalloc(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
