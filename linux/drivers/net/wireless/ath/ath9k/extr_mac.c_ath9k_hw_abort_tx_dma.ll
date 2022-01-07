; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_abort_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_abort_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64 }

@AR_Q_TXD = common dso_local global i32 0, align 4
@AR_Q_TXD_M = common dso_local global i32 0, align 4
@AR_PCU_MISC = common dso_local global i32 0, align 4
@AR_PCU_FORCE_QUIET_COLL = common dso_local global i32 0, align 4
@AR_PCU_CLEAR_VMF = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_FORCE_CH_IDLE_HIGH = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC_IGNORE_BACKOFF = common dso_local global i32 0, align 4
@AR_NUM_QCU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_abort_tx_dma(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  store i32 1000, i32* %3, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @IS_CHAN_HALF_RATE(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @IS_CHAN_QUARTER_RATE(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_Q_TXD, align 4
  %33 = load i32, i32* @AR_Q_TXD_M, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_PCU_MISC, align 4
  %37 = load i32, i32* @AR_PCU_FORCE_QUIET_COLL, align 4
  %38 = load i32, i32* @AR_PCU_CLEAR_VMF, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @REG_SET_BIT(%struct.ath_hw* %35, i32 %36, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = load i32, i32* @AR_DIAG_SW, align 4
  %43 = load i32, i32* @AR_DIAG_FORCE_CH_IDLE_HIGH, align 4
  %44 = call i32 @REG_SET_BIT(%struct.ath_hw* %41, i32 %42, i32 %43)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = load i32, i32* @AR_D_GBL_IFS_MISC, align 4
  %47 = load i32, i32* @AR_D_GBL_IFS_MISC_IGNORE_BACKOFF, align 4
  %48 = call i32 @REG_SET_BIT(%struct.ath_hw* %45, i32 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %74, %30
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AR_NUM_QCU, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @udelay(i32 5)
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ath9k_hw_numtxpending(%struct.ath_hw* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %73

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %54

73:                                               ; preds = %68, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %79 = load i32, i32* @AR_PCU_MISC, align 4
  %80 = load i32, i32* @AR_PCU_FORCE_QUIET_COLL, align 4
  %81 = load i32, i32* @AR_PCU_CLEAR_VMF, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @REG_CLR_BIT(%struct.ath_hw* %78, i32 %79, i32 %82)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = load i32, i32* @AR_DIAG_SW, align 4
  %86 = load i32, i32* @AR_DIAG_FORCE_CH_IDLE_HIGH, align 4
  %87 = call i32 @REG_CLR_BIT(%struct.ath_hw* %84, i32 %85, i32 %86)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = load i32, i32* @AR_D_GBL_IFS_MISC, align 4
  %90 = load i32, i32* @AR_D_GBL_IFS_MISC_IGNORE_BACKOFF, align 4
  %91 = call i32 @REG_CLR_BIT(%struct.ath_hw* %88, i32 %89, i32 %90)
  %92 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %93 = load i32, i32* @AR_Q_TXD, align 4
  %94 = call i32 @REG_WRITE(%struct.ath_hw* %92, i32 %93, i32 0)
  ret void
}

declare dso_local i64 @IS_CHAN_HALF_RATE(i64) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_numtxpending(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
