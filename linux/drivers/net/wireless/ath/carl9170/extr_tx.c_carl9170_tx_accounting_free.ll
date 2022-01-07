; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_accounting_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_accounting_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i64*, i64*, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@CARL9170_NUM_TX_LIMIT_SOFT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*)* @carl9170_tx_accounting_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_accounting_free(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %23 = call i32 @is_mem_full(%struct.ar9170* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %91, label %25

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %87, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %26
  %35 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CARL9170_NUM_TX_LIMIT_SOFT, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %87

46:                                               ; preds = %34
  %47 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %48 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ieee80211_queue_stopped(%struct.TYPE_5__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %46
  %54 = load i64, i64* @jiffies, align 8
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %54, %61
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %63, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %53
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %53
  br label %81

81:                                               ; preds = %80, %46
  %82 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %83 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %82, i32 0, i32 5
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ieee80211_wake_queue(%struct.TYPE_5__* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %45
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %26

90:                                               ; preds = %26
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %93 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %92, i32 0, i32 4
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %96 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %95, i32 0, i32 3
  %97 = call i64 @atomic_dec_and_test(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 2
  %102 = call i32 @complete(i32* %101)
  br label %103

103:                                              ; preds = %99, %91
  ret void
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @is_mem_full(%struct.ar9170*) #1

declare dso_local i64 @ieee80211_queue_stopped(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
