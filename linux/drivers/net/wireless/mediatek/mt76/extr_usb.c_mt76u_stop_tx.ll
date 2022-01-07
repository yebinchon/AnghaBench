; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)* }
%struct.mt76_queue_entry = type { i32 }
%struct.TYPE_4__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i32, i64, i32, i64, %struct.mt76_queue_entry* }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out waiting for pending tx\0A\00", align 1
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@MT76_READING_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76u_stop_tx(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca %struct.mt76_queue_entry, align 4
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %12 = call i32 @mt76_has_tx_pending(%struct.mt76_dev* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %16, 5
  %18 = call i32 @wait_event_timeout(i32 %10, i32 %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %128, label %21

21:                                               ; preds = %1
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %59, %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %37, align 8
  store %struct.mt76_queue* %38, %struct.mt76_queue** %4, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %55, %30
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %42 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %47 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %46, i32 0, i32 4
  %48 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %48, i64 %50
  %52 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_kill_urb(i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %39

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %64 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %63, i32 0, i32 4
  %65 = call i32 @tasklet_kill(i32* %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %124, %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %127

70:                                               ; preds = %66
  %71 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %72 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.mt76_queue*, %struct.mt76_queue** %77, align 8
  store %struct.mt76_queue* %78, %struct.mt76_queue** %4, align 8
  %79 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %80 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %79, i32 0, i32 2
  %81 = call i32 @spin_lock_bh(i32* %80)
  br label %82

82:                                               ; preds = %87, %70
  %83 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %84 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %89 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %88, i32 0, i32 4
  %90 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %89, align 8
  %91 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %92 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %90, i64 %93
  %95 = bitcast %struct.mt76_queue_entry* %3 to i8*
  %96 = bitcast %struct.mt76_queue_entry* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %98 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  %101 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %102 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = urem i64 %100, %104
  %106 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %107 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %109 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %113 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)*, i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)** %115, align 8
  %117 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 %116(%struct.mt76_dev* %117, i32 %118, %struct.mt76_queue_entry* %3)
  br label %82

120:                                              ; preds = %82
  %121 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %122 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %121, i32 0, i32 2
  %123 = call i32 @spin_unlock_bh(i32* %122)
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %66

127:                                              ; preds = %66
  br label %128

128:                                              ; preds = %127, %1
  %129 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %130 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @cancel_delayed_work_sync(i32* %131)
  %133 = load i32, i32* @MT76_READING_STATS, align 4
  %134 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %135 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %134, i32 0, i32 0
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  %137 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %138 = call i32 @mt76_tx_status_check(%struct.mt76_dev* %137, i32* null, i32 1)
  ret void
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mt76_has_tx_pending(%struct.mt76_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mt76_tx_status_check(%struct.mt76_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
