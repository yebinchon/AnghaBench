; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i64, i32 }
%struct.dw_mci_slot = type { i32, %struct.TYPE_2__*, %struct.mmc_request* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"queue request: state=%d\0A\00", align 1
@STATE_WAITING_CMD11_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Voltage change didn't complete\0A\00", align 1
@STATE_IDLE = common dso_local global i64 0, align 8
@STATE_SENDING_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.dw_mci_slot*, %struct.mmc_request*)* @dw_mci_queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_queue_request(%struct.dw_mci* %0, %struct.dw_mci_slot* %1, %struct.mmc_request* %2) #0 {
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store %struct.dw_mci_slot* %1, %struct.dw_mci_slot** %5, align 8
  store %struct.mmc_request* %2, %struct.mmc_request** %6, align 8
  %7 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %8 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %12 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dev_vdbg(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %16 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %17 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %16, i32 0, i32 2
  store %struct.mmc_request* %15, %struct.mmc_request** %17, align 8
  %18 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %19 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATE_WAITING_CMD11_DONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %25 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* @STATE_IDLE, align 8
  %30 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %31 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %23, %3
  %33 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %34 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STATE_IDLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i64, i64* @STATE_SENDING_CMD, align 8
  %40 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %41 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %43 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %44 = call i32 @dw_mci_start_request(%struct.dw_mci* %42, %struct.dw_mci_slot* %43)
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %47 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %46, i32 0, i32 0
  %48 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %49 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %45, %38
  ret void
}

declare dso_local i32 @dev_vdbg(i32*, i8*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dw_mci_start_request(%struct.dw_mci*, %struct.dw_mci_slot*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
