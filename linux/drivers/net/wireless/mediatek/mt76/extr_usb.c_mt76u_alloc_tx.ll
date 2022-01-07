; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_alloc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_alloc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mt76_queue*, i32 }
%struct.mt76_queue = type { i32, i32*, i32, i32 }

@MT_TXQ_PSD = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_NUM_TX_ENTRIES = common dso_local global i32 0, align 4
@MT_TX_SG_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*)* @mt76u_alloc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_alloc_tx(%struct.mt76_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %109, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MT_TXQ_PSD, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %112

12:                                               ; preds = %8
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %12
  %25 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mt76_queue*, %struct.mt76_queue** %29, align 8
  %31 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.mt76_queue* %30, %struct.mt76_queue** %37, align 8
  br label %109

38:                                               ; preds = %12
  %39 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.mt76_queue* @devm_kzalloc(i32 %41, i32 24, i32 %42)
  store %struct.mt76_queue* %43, %struct.mt76_queue** %4, align 8
  %44 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %45 = icmp ne %struct.mt76_queue* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %113

49:                                               ; preds = %38
  %50 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %51 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %50, i32 0, i32 3
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mt76_ac_to_hwq(i32 %53)
  %55 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %56 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %58 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.mt76_queue* %57, %struct.mt76_queue** %64, align 8
  %65 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MT_NUM_TX_ENTRIES, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32* @devm_kcalloc(i32 %67, i32 %68, i32 4, i32 %69)
  %71 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %72 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %74 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %49
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %113

80:                                               ; preds = %49
  %81 = load i32, i32* @MT_NUM_TX_ENTRIES, align 4
  %82 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %83 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %105, %80
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %87 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %92 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %93 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* @MT_TX_SG_MAX_SIZE, align 4
  %99 = call i32 @mt76u_urb_alloc(%struct.mt76_dev* %91, i32* %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %113

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %84

108:                                              ; preds = %84
  br label %109

109:                                              ; preds = %108, %24
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %8

112:                                              ; preds = %8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %102, %77, %46
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mt76_queue* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mt76_ac_to_hwq(i32) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @mt76u_urb_alloc(%struct.mt76_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
