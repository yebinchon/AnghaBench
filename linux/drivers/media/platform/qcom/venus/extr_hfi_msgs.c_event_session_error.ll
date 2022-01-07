; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_session_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_session_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.venus_inst = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.venus_inst*, i32, i32*)* }
%struct.hfi_msg_event_notify_pkt = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"session error: event id:%x, session id:%x\0A\00", align 1
@HFI_ERR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"session error: event id:%x (%x), session id:%x\0A\00", align 1
@EVT_SESSION_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*)* @event_session_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_session_error(%struct.venus_core* %0, %struct.venus_inst* %1, %struct.hfi_msg_event_notify_pkt* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca %struct.hfi_msg_event_notify_pkt*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store %struct.hfi_msg_event_notify_pkt* %2, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %9 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %13 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %16 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %21 = icmp ne %struct.venus_inst* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %57

23:                                               ; preds = %3
  %24 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %25 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %31 [
    i32 131, label %27
    i32 129, label %27
    i32 130, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23, %23, %23
  %28 = load i32, i32* @HFI_ERR_NONE, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %57

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %34 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %37 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %40 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %42)
  %44 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %45 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %48 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %50 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.venus_inst*, i32, i32*)*, i32 (%struct.venus_inst*, i32, i32*)** %52, align 8
  %54 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %55 = load i32, i32* @EVT_SESSION_ERROR, align 4
  %56 = call i32 %53(%struct.venus_inst* %54, i32 %55, i32* null)
  br label %57

57:                                               ; preds = %22, %31, %27
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
