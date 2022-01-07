; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_util.c_mt76_get_min_avg_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_util.c_mt76_get_min_avg_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i64*, i32, i32* }
%struct.mt76_wcid = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_get_min_avg_rssi(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca %struct.mt76_wcid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @local_bh_disable()
  %10 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %84, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i64* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %11
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %84

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BITS_PER_LONG, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %78, %29
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = and i64 %37, 1
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %78

41:                                               ; preds = %36
  %42 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.mt76_wcid* @rcu_dereference(i32 %48)
  store %struct.mt76_wcid* %49, %struct.mt76_wcid** %3, align 8
  %50 = load %struct.mt76_wcid*, %struct.mt76_wcid** %3, align 8
  %51 = icmp ne %struct.mt76_wcid* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %78

53:                                               ; preds = %41
  %54 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.mt76_wcid*, %struct.mt76_wcid** %3, align 8
  %58 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = icmp slt i32 %59, 5
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.mt76_wcid*, %struct.mt76_wcid** %3, align 8
  %64 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %63, i32 0, i32 0
  %65 = call i32 @ewma_signal_read(i32* %64)
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %70 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77, %52, %40
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* %8, align 8
  %82 = lshr i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %33

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %83, %28
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %11

87:                                               ; preds = %11
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = call i32 (...) @local_bh_enable()
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.mt76_wcid* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ewma_signal_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
