; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_process_msg_sys_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_process_msg_sys_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }
%struct.hfi_msg_event_notify_pkt = type { i64 }

@HFI_EVENT_SYS_ERROR = common dso_local global i64 0, align 8
@VENUS_STATE_DEINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_hfi_device*, i8*)* @venus_process_msg_sys_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venus_process_msg_sys_error(%struct.venus_hfi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfi_msg_event_notify_pkt*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.hfi_msg_event_notify_pkt*
  store %struct.hfi_msg_event_notify_pkt* %7, %struct.hfi_msg_event_notify_pkt** %5, align 8
  %8 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %5, align 8
  %9 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HFI_EVENT_SYS_ERROR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %16 = load i32, i32* @VENUS_STATE_DEINIT, align 4
  %17 = call i32 @venus_set_state(%struct.venus_hfi_device* %15, i32 %16)
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %19 = call i32 @venus_halt_axi(%struct.venus_hfi_device* %18)
  %20 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %21 = call i32 @venus_sfr_print(%struct.venus_hfi_device* %20)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @venus_set_state(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_halt_axi(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_sfr_print(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
