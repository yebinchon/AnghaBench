; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_chain_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_chain_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR_PHY_ANALOG_SWAP = common dso_local global i32 0, align 4
@AR_PHY_SWAP_ALT_CHAIN = common dso_local global i32 0, align 4
@AR_PHY_RX_CHAINMASK = common dso_local global i32 0, align 4
@AR_PHY_CAL_CHAINMASK = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_APM = common dso_local global i32 0, align 4
@AR_SELFGEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_set_chain_masks(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %3
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %21 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %22 = call i32 @REG_SET_BIT(%struct.ath_hw* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATH9K_HW_CAP_APM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 3, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39, %23
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
