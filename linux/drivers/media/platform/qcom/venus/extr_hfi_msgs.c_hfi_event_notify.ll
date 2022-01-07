; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_event_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_event_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_inst = type { i32 }
%struct.hfi_msg_event_notify_pkt = type { i32 }

@EVT_SYS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, i8*)* @hfi_event_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi_event_notify(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_msg_event_notify_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.hfi_msg_event_notify_pkt*
  store %struct.hfi_msg_event_notify_pkt* %9, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %39

13:                                               ; preds = %3
  %14 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %15 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %38 [
    i32 128, label %17
    i32 131, label %22
    i32 129, label %27
    i32 132, label %32
    i32 130, label %37
  ]

17:                                               ; preds = %13
  %18 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %19 = load i32, i32* @EVT_SYS_ERROR, align 4
  %20 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %21 = call i32 @event_sys_error(%struct.venus_core* %18, i32 %19, %struct.hfi_msg_event_notify_pkt* %20)
  br label %39

22:                                               ; preds = %13
  %23 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %24 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %25 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %26 = call i32 @event_session_error(%struct.venus_core* %23, %struct.venus_inst* %24, %struct.hfi_msg_event_notify_pkt* %25)
  br label %39

27:                                               ; preds = %13
  %28 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %31 = call i32 @event_seq_changed(%struct.venus_core* %28, %struct.venus_inst* %29, %struct.hfi_msg_event_notify_pkt* %30)
  br label %39

32:                                               ; preds = %13
  %33 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %34 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %35 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %7, align 8
  %36 = call i32 @event_release_buffer_ref(%struct.venus_core* %33, %struct.venus_inst* %34, %struct.hfi_msg_event_notify_pkt* %35)
  br label %39

37:                                               ; preds = %13
  br label %39

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %12, %38, %37, %32, %27, %22, %17
  ret void
}

declare dso_local i32 @event_sys_error(%struct.venus_core*, i32, %struct.hfi_msg_event_notify_pkt*) #1

declare dso_local i32 @event_session_error(%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*) #1

declare dso_local i32 @event_seq_changed(%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*) #1

declare dso_local i32 @event_release_buffer_ref(%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
