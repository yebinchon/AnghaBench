; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_bb_watchdog_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_bb_watchdog_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i64 }
%struct.ath_common = type { i32 }

@AR_PHY_WATCHDOG_CTL_2 = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_RST_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_IRQ_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_CTL_1 = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_NON_IDLE_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_IDLE_ENABLE = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Disabled BB Watchdog\0A\00", align 1
@AR_PHY_WATCHDOG_CNTL2_MASK = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_IDLE_MASK = common dso_local global i32 0, align 4
@AR_PHY_WATCHDOG_NON_IDLE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Enabled BB Watchdog timeout (%u ms)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_bb_watchdog_config(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_PHY_WATCHDOG_CTL_2, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_PHY_WATCHDOG_CTL_2, align 4
  %19 = call i32 @REG_READ(%struct.ath_hw* %17, i32 %18)
  %20 = load i32, i32* @AR_PHY_WATCHDOG_RST_ENABLE, align 4
  %21 = load i32, i32* @AR_PHY_WATCHDOG_IRQ_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = call i32 @REG_WRITE(%struct.ath_hw* %15, i32 %16, i32 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_PHY_WATCHDOG_CTL_1, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = load i32, i32* @AR_PHY_WATCHDOG_CTL_1, align 4
  %30 = call i32 @REG_READ(%struct.ath_hw* %28, i32 %29)
  %31 = load i32, i32* @AR_PHY_WATCHDOG_NON_IDLE_ENABLE, align 4
  %32 = load i32, i32* @AR_PHY_WATCHDOG_IDLE_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 %35)
  %37 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %38 = load i32, i32* @RESET, align 4
  %39 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %92

40:                                               ; preds = %1
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = load i32, i32* @AR_PHY_WATCHDOG_CTL_2, align 4
  %43 = call i32 @REG_READ(%struct.ath_hw* %41, i32 %42)
  %44 = load i32, i32* @AR_PHY_WATCHDOG_CNTL2_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = load i32, i32* @AR_PHY_WATCHDOG_CTL_2, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AR_PHY_WATCHDOG_IRQ_ENABLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AR_PHY_WATCHDOG_RST_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @REG_WRITE(%struct.ath_hw* %46, i32 %47, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 10000
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 10000, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 100, %59
  %61 = sdiv i32 %60, 74
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @IS_CHAN_HT40(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 100, %73
  %75 = sdiv i32 %74, 37
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %66, %58
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = load i32, i32* @AR_PHY_WATCHDOG_CTL_1, align 4
  %79 = load i32, i32* @AR_PHY_WATCHDOG_NON_IDLE_ENABLE, align 4
  %80 = load i32, i32* @AR_PHY_WATCHDOG_IDLE_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @AR_PHY_WATCHDOG_NON_IDLE_MASK, align 4
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 2
  %85 = and i32 %82, %84
  %86 = or i32 %81, %85
  %87 = call i32 @REG_WRITE(%struct.ath_hw* %77, i32 %78, i32 %86)
  %88 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %89 = load i32, i32* @RESET, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %88, i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %76, %14
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @IS_CHAN_HT40(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
