; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_tx_wait_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_tx_wait_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64, i32, i32, i32*, i32, i32 }

@tx_wait = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MWL8K_TX_WAIT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx rings drained\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"waiting for tx rings to drain (%d -> %d pkts)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"tx rings stuck for %d ms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_tx_wait_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_tx_wait_empty(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %4, align 8
  %12 = load i32, i32* @tx_wait, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = call i32 (...) @might_sleep()
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @current, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %144

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %144

29:                                               ; preds = %1
  %30 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %30, i32 0, i32 6
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %144

35:                                               ; preds = %29
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %144

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %42 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %42, i32 0, i32 3
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 4
  store i32* @tx_wait, i32** %46, align 8
  br label %47

47:                                               ; preds = %119, %110, %101, %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %137

51:                                               ; preds = %47
  %52 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* @MWL8K_TX_WAIT_TIMEOUT_MS, align 4
  %59 = call i32 @msecs_to_jiffies(i32 %58)
  %60 = call i64 @wait_for_completion_timeout(i32* @tx_wait, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %61, i32 0, i32 6
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %66, i32 0, i32 3
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %70 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %71, i32 0, i32 3
  %73 = call i32 @spin_unlock_bh(i32* %72)
  store i32 0, i32* %2, align 4
  br label %144

74:                                               ; preds = %51
  %75 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %75, i32 0, i32 3
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %87 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @WARN_ON(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @wiphy_notice(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %85
  br label %137

98:                                               ; preds = %80
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %103 = call i32 @mwl8k_tx_start(%struct.mwl8k_priv* %102)
  store i32 0, i32* %5, align 4
  br label %47

104:                                              ; preds = %98
  %105 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %106 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @wiphy_notice(i32 %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117)
  store i32 1, i32* %5, align 4
  br label %47

119:                                              ; preds = %104
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %123 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MWL8K_TX_WAIT_TIMEOUT_MS, align 4
  %126 = call i32 @wiphy_err(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %128 = call i32 @mwl8k_dump_tx_rings(%struct.ieee80211_hw* %127)
  %129 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %132 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %133 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %132, i32 0, i32 5
  %134 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %131, i32* %133)
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %47

137:                                              ; preds = %97, %47
  %138 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %139 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %138, i32 0, i32 4
  store i32* null, i32** %139, align 8
  %140 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %141 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %140, i32 0, i32 3
  %142 = call i32 @spin_unlock_bh(i32* %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %137, %65, %40, %34, %26, %25
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wiphy_notice(i32, i8*, ...) #1

declare dso_local i32 @mwl8k_tx_start(%struct.mwl8k_priv*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @mwl8k_dump_tx_rings(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
