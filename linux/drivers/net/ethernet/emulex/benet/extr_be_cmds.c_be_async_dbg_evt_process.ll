; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_async_dbg_evt_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_async_dbg_evt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.be_mcc_compl = type { i32 }
%struct.be_async_event_qnq = type { i32, i32 }

@ASYNC_EVENT_TYPE_SHIFT = common dso_local global i32 0, align 4
@ASYNC_EVENT_TYPE_MASK = common dso_local global i32 0, align 4
@BE_FLAGS_QNQ_ASYNC_EVT_RCVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown debug event 0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_mcc_compl*)* @be_async_dbg_evt_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_dbg_evt_process(%struct.be_adapter* %0, %struct.be_mcc_compl* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_compl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_async_event_qnq*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_mcc_compl* %1, %struct.be_mcc_compl** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %8 = bitcast %struct.be_mcc_compl* %7 to %struct.be_async_event_qnq*
  store %struct.be_async_event_qnq* %8, %struct.be_async_event_qnq** %6, align 8
  %9 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %10 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ASYNC_EVENT_TYPE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @ASYNC_EVENT_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %35 [
    i32 128, label %17
  ]

17:                                               ; preds = %2
  %18 = load %struct.be_async_event_qnq*, %struct.be_async_event_qnq** %6, align 8
  %19 = getelementptr inbounds %struct.be_async_event_qnq, %struct.be_async_event_qnq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.be_async_event_qnq*, %struct.be_async_event_qnq** %6, align 8
  %24 = getelementptr inbounds %struct.be_async_event_qnq, %struct.be_async_event_qnq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @BE_FLAGS_QNQ_ASYNC_EVT_RCVD, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
