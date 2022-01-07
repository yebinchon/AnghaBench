; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }
%struct.mt7603_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_PSE_RTA = common dso_local global i32 0, align 4
@MT_PSE_RTA_TAG_ID = common dso_local global i32 0, align 4
@MT_PSE_RTA_PORT_ID = common dso_local global i32 0, align 4
@MT_PSE_RTA_QUEUE_ID = common dso_local global i32 0, align 4
@MT_PSE_RTA_REDIRECT_EN = common dso_local global i32 0, align 4
@MT_PSE_RTA_WRITE = common dso_local global i32 0, align 4
@MT_PSE_RTA_BUSY = common dso_local global i32 0, align 4
@MT_WTBL1_OR = common dso_local global i32 0, align 4
@MT_WTBL1_OR_PSM_WRITE = common dso_local global i32 0, align 4
@MT_WTBL1_W3_POWER_SAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_wtbl_set_ps(%struct.mt7603_dev* %0, %struct.mt7603_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.mt7603_dev*, align 8
  %5 = alloca %struct.mt7603_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %4, align 8
  store %struct.mt7603_sta* %1, %struct.mt7603_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %10 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %17 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %75

22:                                               ; preds = %3
  %23 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %24 = load i32, i32* @MT_PSE_RTA, align 4
  %25 = load i32, i32* @MT_PSE_RTA_TAG_ID, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @FIELD_PREP(i32 %25, i32 %26)
  %28 = load i32, i32* @MT_PSE_RTA_PORT_ID, align 4
  %29 = call i32 @FIELD_PREP(i32 %28, i32 0)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @MT_PSE_RTA_QUEUE_ID, align 4
  %32 = call i32 @FIELD_PREP(i32 %31, i32 1)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @MT_PSE_RTA_REDIRECT_EN, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @FIELD_PREP(i32 %34, i32 %35)
  %37 = or i32 %33, %36
  %38 = load i32, i32* @MT_PSE_RTA_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MT_PSE_RTA_BUSY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mt76_wr(%struct.mt7603_dev* %23, i32 %24, i32 %41)
  %43 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %44 = load i32, i32* @MT_PSE_RTA, align 4
  %45 = load i32, i32* @MT_PSE_RTA_BUSY, align 4
  %46 = call i32 @mt76_poll(%struct.mt7603_dev* %43, i32 %44, i32 %45, i32 0, i32 5000)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %22
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mt7603_filter_tx(%struct.mt7603_dev* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %49, %22
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @mt7603_wtbl1_addr(i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %57 = load i32, i32* @MT_WTBL1_OR, align 4
  %58 = load i32, i32* @MT_WTBL1_OR_PSM_WRITE, align 4
  %59 = call i32 @mt76_set(%struct.mt7603_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 12
  %63 = load i32, i32* @MT_WTBL1_W3_POWER_SAVE, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MT_WTBL1_W3_POWER_SAVE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @mt76_rmw(%struct.mt7603_dev* %60, i64 %62, i32 %63, i32 %66)
  %68 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %69 = load i32, i32* @MT_WTBL1_OR, align 4
  %70 = load i32, i32* @MT_WTBL1_OR_PSM_WRITE, align 4
  %71 = call i32 @mt76_clear(%struct.mt7603_dev* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %74 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %53, %21
  %76 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7603_filter_tx(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i64 @mt7603_wtbl1_addr(i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7603_dev*, i64, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
