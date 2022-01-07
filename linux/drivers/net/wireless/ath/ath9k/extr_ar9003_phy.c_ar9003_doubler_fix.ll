; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_doubler_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_doubler_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_65NM_CH0_RXTX2 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_RXTX2 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_RXTX2 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH12 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH12_VREFMUL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_doubler_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_doubler_fix(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9300(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call i64 @AR_SREV_9580(%struct.ath_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i64 @AR_SREV_9550(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %94

14:                                               ; preds = %10, %6, %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2, align 4
  %17 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = call i32 @REG_RMW(%struct.ath_hw* %15, i32 %16, i32 %21, i32 0)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_PHY_65NM_CH1_RXTX2, align 4
  %25 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = call i32 @REG_RMW(%struct.ath_hw* %23, i32 %24, i32 %29, i32 0)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_PHY_65NM_CH2_RXTX2, align 4
  %33 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = call i32 @REG_RMW(%struct.ath_hw* %31, i32 %32, i32 %37, i32 0)
  %39 = call i32 @udelay(i32 200)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2, align 4
  %42 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %43 = call i32 @REG_CLR_BIT(%struct.ath_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = load i32, i32* @AR_PHY_65NM_CH1_RXTX2, align 4
  %46 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %47 = call i32 @REG_CLR_BIT(%struct.ath_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = load i32, i32* @AR_PHY_65NM_CH2_RXTX2, align 4
  %50 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %51 = call i32 @REG_CLR_BIT(%struct.ath_hw* %48, i32 %49, i32 %50)
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2, align 4
  %55 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %56 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_PHY_65NM_CH1_RXTX2, align 4
  %59 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %60 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = load i32, i32* @AR_PHY_65NM_CH2_RXTX2, align 4
  %63 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, align 4
  %64 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %61, i32 %62, i32 %63, i32 1)
  %65 = call i32 @udelay(i32 200)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH12, align 4
  %68 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH12_VREFMUL3, align 4
  %69 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %66, i32 %67, i32 %68, i32 15)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2, align 4
  %72 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = call i32 @REG_RMW(%struct.ath_hw* %70, i32 %71, i32 0, i32 %76)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %79 = load i32, i32* @AR_PHY_65NM_CH1_RXTX2, align 4
  %80 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %83 = shl i32 1, %82
  %84 = or i32 %81, %83
  %85 = call i32 @REG_RMW(%struct.ath_hw* %78, i32 %79, i32 0, i32 %84)
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = load i32, i32* @AR_PHY_65NM_CH2_RXTX2, align 4
  %88 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* @AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, align 4
  %91 = shl i32 1, %90
  %92 = or i32 %89, %91
  %93 = call i32 @REG_RMW(%struct.ath_hw* %86, i32 %87, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %14, %10
  ret void
}

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
