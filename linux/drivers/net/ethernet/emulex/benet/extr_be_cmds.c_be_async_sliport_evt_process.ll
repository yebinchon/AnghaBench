; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_async_sliport_evt_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_async_sliport_evt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_compl = type { i64 }

@ASYNC_EVENT_TYPE_SHIFT = common dso_local global i64 0, align 8
@ASYNC_EVENT_TYPE_MASK = common dso_local global i64 0, align 8
@ASYNC_EVENT_PORT_MISCONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_mcc_compl*)* @be_async_sliport_evt_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_sliport_evt_process(%struct.be_adapter* %0, %struct.be_mcc_compl* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_compl*, align 8
  %5 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_mcc_compl* %1, %struct.be_mcc_compl** %4, align 8
  %6 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %7 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ASYNC_EVENT_TYPE_SHIFT, align 8
  %10 = ashr i64 %8, %9
  %11 = load i64, i64* @ASYNC_EVENT_TYPE_MASK, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ASYNC_EVENT_PORT_MISCONFIG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %18 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %19 = call i32 @be_async_port_misconfig_event_process(%struct.be_adapter* %17, %struct.be_mcc_compl* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @be_async_port_misconfig_event_process(%struct.be_adapter*, %struct.be_mcc_compl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
