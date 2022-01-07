; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_pse_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_pse_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32* }

@RESET_CAUSE_RESET_FAILED = common dso_local global i64 0, align 8
@MT_MCU_DEBUG_RESET = common dso_local global i32 0, align 4
@MT_MCU_DEBUG_RESET_PSE_S = common dso_local global i32 0, align 4
@MT_MCU_DEBUG_RESET_PSE = common dso_local global i32 0, align 4
@MT_MCU_DEBUG_RESET_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_pse_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_pse_reset(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %3 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %12 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %13 = load i32, i32* @MT_MCU_DEBUG_RESET_PSE_S, align 4
  %14 = call i32 @mt76_clear(%struct.mt7603_dev* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %17 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %18 = load i32, i32* @MT_MCU_DEBUG_RESET_PSE, align 4
  %19 = call i32 @mt76_set(%struct.mt7603_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %21 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %22 = load i32, i32* @MT_MCU_DEBUG_RESET_PSE_S, align 4
  %23 = load i32, i32* @MT_MCU_DEBUG_RESET_PSE_S, align 4
  %24 = call i32 @mt76_poll_msec(%struct.mt7603_dev* %20, i32 %21, i32 %22, i32 %23, i32 500)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  %27 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %35 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %36 = load i32, i32* @MT_MCU_DEBUG_RESET_PSE, align 4
  %37 = call i32 @mt76_clear(%struct.mt7603_dev* %34, i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %15
  %39 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %45 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %46 = load i32, i32* @MT_MCU_DEBUG_RESET_QUEUES, align 4
  %47 = call i32 @mt76_clear(%struct.mt7603_dev* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %26
  %49 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 3
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %48
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7603_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
