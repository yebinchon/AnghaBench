; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_ENABLE_DAC_FIFO = common dso_local global i32 0, align 4
@AR_PHY_GC_HT_EN = common dso_local global i32 0, align 4
@AR_PHY_GC_SHORT_GI_40 = common dso_local global i32 0, align 4
@AR_PHY_GC_SINGLE_HT_LTF1 = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_PHY_GC_GF_DETECT_EN = common dso_local global i32 0, align 4
@AR_GTXTO = common dso_local global i32 0, align 4
@AR_GTXTO_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_CST = common dso_local global i32 0, align 4
@AR_CST_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_set_channel_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_channel_regs(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %9 = call i32 @REG_READ(%struct.ath_hw* %7, i32 %8)
  %10 = load i32, i32* @AR_PHY_GC_ENABLE_DAC_FIFO, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @AR_PHY_GC_HT_EN, align 4
  %13 = load i32, i32* @AR_PHY_GC_SHORT_GI_40, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i32 @AR_SREV_9561(%struct.ath_hw* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @AR_PHY_GC_SINGLE_HT_LTF1, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %26 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* @AR_PHY_GC_DYN2040_EN, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %33 = call i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %43 = call i32 @REG_READ(%struct.ath_hw* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @AR_PHY_GC_GF_DETECT_EN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %56 = call i32 @ath9k_hw_set11nmac2040(%struct.ath_hw* %54, %struct.ath9k_channel* %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_GTXTO, align 4
  %59 = load i32, i32* @AR_GTXTO_TIMEOUT_LIMIT_S, align 4
  %60 = shl i32 25, %59
  %61 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_CST, align 4
  %64 = load i32, i32* @AR_CST_TIMEOUT_LIMIT_S, align 4
  %65 = shl i32 15, %64
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %62, i32 %63, i32 %65)
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set11nmac2040(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
