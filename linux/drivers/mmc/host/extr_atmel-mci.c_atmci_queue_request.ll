; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_mci_slot = type { i32, %struct.mmc_request*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_request = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"queue request: state=%d\0A\00", align 1
@STATE_IDLE = common dso_local global i64 0, align 8
@STATE_SENDING_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"queue request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, %struct.atmel_mci_slot*, %struct.mmc_request*)* @atmci_queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_queue_request(%struct.atmel_mci* %0, %struct.atmel_mci_slot* %1, %struct.mmc_request* %2) #0 {
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  store %struct.atmel_mci* %0, %struct.atmel_mci** %4, align 8
  store %struct.atmel_mci_slot* %1, %struct.atmel_mci_slot** %5, align 8
  store %struct.mmc_request* %2, %struct.mmc_request** %6, align 8
  %7 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %8 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dev_vdbg(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %16 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %19 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %20 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %19, i32 0, i32 1
  store %struct.mmc_request* %18, %struct.mmc_request** %20, align 8
  %21 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATE_IDLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i64, i64* @STATE_SENDING_CMD, align 8
  %28 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %31 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %32 = call i32 @atmci_start_request(%struct.atmel_mci* %30, %struct.atmel_mci_slot* %31)
  br label %44

33:                                               ; preds = %3
  %34 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %35 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %40 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %39, i32 0, i32 0
  %41 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %41, i32 0, i32 2
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %33, %26
  %45 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  ret void
}

declare dso_local i32 @dev_vdbg(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atmci_start_request(%struct.atmel_mci*, %struct.atmel_mci_slot*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
