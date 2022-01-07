; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_start_scan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_start_scan_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i8* }

@WMI_SCAN_PRIORITY_LOW = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_STARTED = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_COMPLETED = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_BSS_CHANNEL = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_FOREIGN_CHANNEL = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_FOREIGN_CHANNEL_EXIT = common dso_local global i32 0, align 4
@WMI_SCAN_EVENT_DEQUEUED = common dso_local global i32 0, align 4
@WMI_SCAN_CHAN_STAT_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_start_scan_init(%struct.ath10k* %0, %struct.wmi_start_scan_arg* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_start_scan_arg*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.wmi_start_scan_arg* %1, %struct.wmi_start_scan_arg** %4, align 8
  %5 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %6 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load i32, i32* @WMI_SCAN_PRIORITY_LOW, align 4
  %8 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %9 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %8, i32 0, i32 14
  store i32 %7, i32* %9, align 8
  %10 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %11 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %10, i32 0, i32 1
  store i32 50, i32* %11, align 4
  %12 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %13 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %12, i32 0, i32 2
  store i32 150, i32* %13, align 8
  %14 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %15 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %14, i32 0, i32 3
  store i32 50, i32* %15, align 4
  %16 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %17 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %16, i32 0, i32 4
  store i32 500, i32* %17, align 8
  %18 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %19 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %18, i32 0, i32 13
  store i64 0, i64* %19, align 8
  %20 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %21 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  %22 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %23 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %22, i32 0, i32 11
  store i64 0, i64* %23, align 8
  %24 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %25 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %24, i32 0, i32 5
  store i32 20000, i32* %25, align 4
  %26 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %27 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %26, i32 0, i32 6
  store i32 5, i32* %27, align 8
  %28 = load i32, i32* @WMI_SCAN_EVENT_STARTED, align 4
  %29 = load i32, i32* @WMI_SCAN_EVENT_COMPLETED, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WMI_SCAN_EVENT_BSS_CHANNEL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WMI_SCAN_EVENT_FOREIGN_CHANNEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WMI_SCAN_EVENT_FOREIGN_CHANNEL_EXIT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WMI_SCAN_EVENT_DEQUEUED, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %40 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @WMI_SCAN_CHAN_STAT_EVENT, align 4
  %42 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %43 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %47 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %46, i32 0, i32 8
  store i32 1, i32* %47, align 8
  %48 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %49 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %48, i32 0, i32 9
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
