; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_low_rssi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_low_rssi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FM_RX_RDS_AF_SWITCH_MODE_ON = common dso_local global i64 0, align 8
@FM_LEV_EVENT = common dso_local global i32 0, align 4
@FM_UNDEFINED_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"irq: rssi level has fallen below threshold level\0A\00", align 1
@FM_AF_JUMP_SETPI_IDX = common dso_local global i32 0, align 4
@FM_SEND_INTMSK_CMD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmdev*)* @fm_irq_handle_low_rssi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm_irq_handle_low_rssi_start(%struct.fmdev* %0) #0 {
  %2 = alloca %struct.fmdev*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %2, align 8
  %3 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %4 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FM_RX_RDS_AF_SWITCH_MODE_ON, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FM_LEV_EVENT, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %17 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %9
  %23 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %24 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FM_UNDEFINED_FREQ, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %31 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = call i32 @fmdbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @FM_LEV_EVENT, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %46 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %49 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %53 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @FM_AF_JUMP_SETPI_IDX, align 4
  %56 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %57 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  br label %64

59:                                               ; preds = %29, %22, %9, %1
  %60 = load i32, i32* @FM_SEND_INTMSK_CMD_IDX, align 4
  %61 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %62 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %36
  %65 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %66 = call i32 @fm_irq_call(%struct.fmdev* %65)
  ret void
}

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local i32 @fm_irq_call(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
