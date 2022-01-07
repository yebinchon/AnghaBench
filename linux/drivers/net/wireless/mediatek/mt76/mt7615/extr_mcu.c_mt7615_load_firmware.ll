; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_TOP_MISC2 = common dso_local global i32 0, align 4
@MT_TOP_MISC2_FW_STATE = common dso_local global i32 0, align 4
@FW_STATE_FW_DOWNLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Firmware is not ready for download\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FW_STATE_CR4_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Timeout for initializing firmware\0A\00", align 1
@MT_TXQ_FWDL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Firmware init done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_load_firmware(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %7 = load i32, i32* @MT_TOP_MISC2, align 4
  %8 = load i32, i32* @MT_TOP_MISC2_FW_STATE, align 4
  %9 = call i64 @mt76_get_field(%struct.mt7615_dev* %6, i32 %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @FW_STATE_FW_DOWNLOAD, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %23 = call i32 @mt7615_load_patch(%struct.mt7615_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %30 = call i32 @mt7615_load_ram(%struct.mt7615_dev* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %28
  %36 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %37 = load i32, i32* @MT_TOP_MISC2, align 4
  %38 = load i32, i32* @MT_TOP_MISC2_FW_STATE, align 4
  %39 = load i32, i32* @MT_TOP_MISC2_FW_STATE, align 4
  %40 = load i32, i32* @FW_STATE_CR4_RDY, align 4
  %41 = call i32 @FIELD_PREP(i32 %39, i32 %40)
  %42 = call i32 @mt76_poll_msec(%struct.mt7615_dev* %36, i32 %37, i32 %38, i32 %41, i32 500)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %35
  %53 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %54 = load i32, i32* @MT_TXQ_FWDL, align 4
  %55 = call i32 @mt76_queue_tx_cleanup(%struct.mt7615_dev* %53, i32 %54, i32 0)
  %56 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %44, %33, %26, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @mt76_get_field(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mt7615_load_patch(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_load_ram(%struct.mt7615_dev*) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7615_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_queue_tx_cleanup(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
