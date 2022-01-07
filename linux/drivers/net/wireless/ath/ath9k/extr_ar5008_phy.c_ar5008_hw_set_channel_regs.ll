; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_channel_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_channel_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_FC_ENABLE_DAC_FIFO = common dso_local global i32 0, align 4
@AR_PHY_FC_HT_EN = common dso_local global i32 0, align 4
@AR_PHY_FC_SHORT_GI_40 = common dso_local global i32 0, align 4
@AR_PHY_FC_SINGLE_HT_LTF1 = common dso_local global i32 0, align 4
@AR_PHY_FC_WALSH = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_FC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_GTXTO = common dso_local global i32 0, align 4
@AR_GTXTO_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_CST = common dso_local global i32 0, align 4
@AR_CST_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_set_channel_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_set_channel_regs(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* @AR_PHY_TURBO, align 4
  %13 = call i32 @REG_READ(%struct.ath_hw* %11, i32 %12)
  %14 = load i32, i32* @AR_PHY_FC_ENABLE_DAC_FIFO, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @AR_PHY_FC_HT_EN, align 4
  %18 = load i32, i32* @AR_PHY_FC_SHORT_GI_40, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR_PHY_FC_SINGLE_HT_LTF1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AR_PHY_FC_WALSH, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %27 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %16
  %30 = load i32, i32* @AR_PHY_FC_DYN2040_EN, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %34 = call i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @AR_PHY_FC_DYN2040_PRI_CH, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* @AR_PHY_TURBO, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %50 = call i32 @ath9k_hw_set11nmac2040(%struct.ath_hw* %48, %struct.ath9k_channel* %49)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_GTXTO, align 4
  %53 = load i32, i32* @AR_GTXTO_TIMEOUT_LIMIT_S, align 4
  %54 = shl i32 25, %53
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %51, i32 %52, i32 %54)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_CST, align 4
  %58 = load i32, i32* @AR_CST_TIMEOUT_LIMIT_S, align 4
  %59 = shl i32 15, %58
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %56, i32 %57, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %61)
  ret void
}

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set11nmac2040(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
