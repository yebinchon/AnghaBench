; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_init_chain_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_init_chain_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_ANALOG_SWAP = common dso_local global i32 0, align 4
@AR_PHY_SWAP_ALT_CHAIN = common dso_local global i32 0, align 4
@AR_SREV_REVISION_5416_10 = common dso_local global i32 0, align 4
@AR_PHY_RX_CHAINMASK = common dso_local global i32 0, align 4
@AR_PHY_CAL_CHAINMASK = common dso_local global i32 0, align 4
@AR_SELFGEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar5008_hw_init_chain_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_init_chain_masks(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %43 [
    i32 5, label %12
    i32 3, label %17
    i32 1, label %32
    i32 2, label %32
    i32 7, label %32
  ]

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %15 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %16 = call i32 @REG_SET_BIT(%struct.ath_hw* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %1, %12
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AR_SREV_REVISION_5416_10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %27 = call i32 @REG_WRITE(%struct.ath_hw* %25, i32 %26, i32 7)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %28, i32 %29, i32 7)
  br label %46

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %1, %1, %1, %31
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_PHY_RX_CHAINMASK, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %36, i32 %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_PHY_CAL_CHAINMASK, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @REG_WRITE(%struct.ath_hw* %39, i32 %40, i32 %41)
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %44)
  br label %46

46:                                               ; preds = %43, %32, %24
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @REG_WRITE(%struct.ath_hw* %47, i32 %48, i32 %49)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %52 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %58 = load i32, i32* @AR_PHY_SWAP_ALT_CHAIN, align 4
  %59 = call i32 @REG_SET_BIT(%struct.ath_hw* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = call i64 @AR_SREV_9100(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = load i32, i32* @AR_PHY_ANALOG_SWAP, align 4
  %69 = call i32 @REG_READ(%struct.ath_hw* %67, i32 %68)
  %70 = or i32 %69, 1
  %71 = call i32 @REG_WRITE(%struct.ath_hw* %65, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
