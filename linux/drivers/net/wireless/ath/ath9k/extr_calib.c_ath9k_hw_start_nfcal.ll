; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_start_nfcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_start_nfcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFCAL_PENDING = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_ENABLE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NO_UPDATE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_start_nfcal(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @NFCAL_PENDING, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %10, i32* %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %19 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %20 = call i32 @REG_SET_BIT(%struct.ath_hw* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %26 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %27 = call i32 @REG_CLR_BIT(%struct.ath_hw* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %31 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %32 = call i32 @REG_SET_BIT(%struct.ath_hw* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %36 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %37 = call i32 @REG_SET_BIT(%struct.ath_hw* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
