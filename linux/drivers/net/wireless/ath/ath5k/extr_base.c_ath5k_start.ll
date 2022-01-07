; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32**, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_common = type { i32 }

@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mode %d\0A\00", align 1
@AR5K_INT_RXOK = common dso_local global i32 0, align 4
@AR5K_INT_RXERR = common dso_local global i32 0, align 4
@AR5K_INT_RXEOL = common dso_local global i32 0, align 4
@AR5K_INT_RXORN = common dso_local global i32 0, align 4
@AR5K_INT_TXDESC = common dso_local global i32 0, align 4
@AR5K_INT_TXEOL = common dso_local global i32 0, align 4
@AR5K_INT_FATAL = common dso_local global i32 0, align 4
@AR5K_INT_GLOBAL = common dso_local global i32 0, align 4
@AR5K_INT_MIB = common dso_local global i32 0, align 4
@ath5k_modparam_no_hw_rfkill_switch = common dso_local global i32 0, align 4
@ATH_STAT_STARTED = common dso_local global i32 0, align 4
@ATH5K_TX_COMPLETE_POLL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  store %struct.ath5k_hw* %9, %struct.ath5k_hw** %3, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 5
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %22 = call i32 @ath5k_stop_locked(%struct.ath5k_hw* %21)
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @AR5K_INT_RXOK, align 4
  %33 = load i32, i32* @AR5K_INT_RXERR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR5K_INT_RXEOL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AR5K_INT_RXORN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AR5K_INT_TXDESC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AR5K_INT_TXEOL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AR5K_INT_FATAL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AR5K_INT_GLOBAL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AR5K_INT_MIB, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = call i32 @ath5k_reset(%struct.ath5k_hw* %51, i32* null, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %1
  br label %97

56:                                               ; preds = %1
  %57 = load i32, i32* @ath5k_modparam_no_hw_rfkill_switch, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %61 = call i32 @ath5k_rfkill_hw_start(%struct.ath5k_hw* %60)
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %73, %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %66 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ath_hw_keyreset(%struct.ath_common* %70, i32 %71)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %63

76:                                               ; preds = %63
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %93, %76
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 6
  %83 = load i32**, i32*** %82, align 8
  %84 = call i32 @ARRAY_SIZE(i32** %83)
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %87, i32 0, i32 6
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %79

96:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %55
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 5
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @ATH_STAT_STARTED, align 4
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @set_bit(i32 %101, i32 %104)
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 2
  %111 = load i32, i32* @ATH5K_TX_COMPLETE_POLL_INT, align 4
  %112 = call i32 @msecs_to_jiffies(i32 %111)
  %113 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_6__* %108, i32* %110, i32 %112)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32) #1

declare dso_local i32 @ath5k_stop_locked(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_reset(%struct.ath5k_hw*, i32*, i32) #1

declare dso_local i32 @ath5k_rfkill_hw_start(%struct.ath5k_hw*) #1

declare dso_local i32 @ath_hw_keyreset(%struct.ath_common*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
