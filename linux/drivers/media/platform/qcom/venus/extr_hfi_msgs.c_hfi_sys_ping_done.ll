; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_sys_ping_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_sys_ping_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32, i32 }
%struct.venus_inst = type { i32 }
%struct.hfi_msg_sys_ping_ack_pkt = type { i32 }

@HFI_ERR_NONE = common dso_local global i32 0, align 4
@HFI_ERR_SYS_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, i8*)* @hfi_sys_ping_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi_sys_ping_done(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_msg_sys_ping_ack_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.hfi_msg_sys_ping_ack_pkt*
  store %struct.hfi_msg_sys_ping_ack_pkt* %9, %struct.hfi_msg_sys_ping_ack_pkt** %7, align 8
  %10 = load i32, i32* @HFI_ERR_NONE, align 4
  %11 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %12 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.hfi_msg_sys_ping_ack_pkt*, %struct.hfi_msg_sys_ping_ack_pkt** %7, align 8
  %14 = getelementptr inbounds %struct.hfi_msg_sys_ping_ack_pkt, %struct.hfi_msg_sys_ping_ack_pkt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 48879
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @HFI_ERR_SYS_FATAL, align 4
  %19 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %20 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %23 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %22, i32 0, i32 0
  %24 = call i32 @complete(i32* %23)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
