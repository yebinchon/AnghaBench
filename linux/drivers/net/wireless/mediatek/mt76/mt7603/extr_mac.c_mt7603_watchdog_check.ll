; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_watchdog_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_watchdog_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, i32* }

@MT7603_WATCHDOG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, i64*, i32, i32 (%struct.mt7603_dev*)*)* @mt7603_watchdog_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_watchdog_check(%struct.mt7603_dev* %0, i64* %1, i32 %2, i32 (%struct.mt7603_dev*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7603_dev*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.mt7603_dev*)*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.mt7603_dev*)* %3, i32 (%struct.mt7603_dev*)** %9, align 8
  %10 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %45

19:                                               ; preds = %4
  %20 = load i32 (%struct.mt7603_dev*)*, i32 (%struct.mt7603_dev*)** %9, align 8
  %21 = icmp ne i32 (%struct.mt7603_dev*)* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32 (%struct.mt7603_dev*)*, i32 (%struct.mt7603_dev*)** %9, align 8
  %24 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %25 = call i32 %23(%struct.mt7603_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MT7603_WATCHDOG_TIMEOUT, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64*, i64** %7, align 8
  store i64 0, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %57

34:                                               ; preds = %27, %22
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %34, %19
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MT7603_WATCHDOG_TIMEOUT, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %57

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %16
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %43, %32
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
