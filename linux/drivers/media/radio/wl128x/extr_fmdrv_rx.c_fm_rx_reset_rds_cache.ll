; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_reset_rds_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_reset_rds_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@FM_RDS_DISABLE = common dso_local global i32 0, align 4
@FM_RX_RDS_AF_SWITCH_MODE_ON = common dso_local global i64 0, align 8
@FM_LEV_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_rx_reset_rds_cache(%struct.fmdev* %0) #0 {
  %2 = alloca %struct.fmdev*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %2, align 8
  %3 = load i32, i32* @FM_RDS_DISABLE, align 4
  %4 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %5 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %3, i32* %7, align 8
  %8 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %13 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %17 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %21 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FM_RX_RDS_AF_SWITCH_MODE_ON, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @FM_LEV_EVENT, align 4
  %28 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %29 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
