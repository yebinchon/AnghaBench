; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_flush_debug_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_flush_debug_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hfi_msg_sys_coverage_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.hfi_msg_sys_debug_pkt = type { i32 }

@HFI_MSG_SYS_COV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_hfi_device*)* @venus_flush_debug_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venus_flush_debug_queue(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca %struct.venus_hfi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfi_msg_sys_coverage_pkt*, align 8
  %6 = alloca %struct.hfi_msg_sys_debug_pkt*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %2, align 8
  %7 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %8 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %13 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %38, %1
  %16 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @venus_iface_dbgq_read(%struct.venus_hfi_device* %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.hfi_msg_sys_coverage_pkt*
  store %struct.hfi_msg_sys_coverage_pkt* %23, %struct.hfi_msg_sys_coverage_pkt** %5, align 8
  %24 = load %struct.hfi_msg_sys_coverage_pkt*, %struct.hfi_msg_sys_coverage_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.hfi_msg_sys_coverage_pkt, %struct.hfi_msg_sys_coverage_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HFI_MSG_SYS_COV, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.hfi_msg_sys_debug_pkt*
  store %struct.hfi_msg_sys_debug_pkt* %32, %struct.hfi_msg_sys_debug_pkt** %6, align 8
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.hfi_msg_sys_debug_pkt*, %struct.hfi_msg_sys_debug_pkt** %6, align 8
  %35 = getelementptr inbounds %struct.hfi_msg_sys_debug_pkt, %struct.hfi_msg_sys_debug_pkt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %21
  br label %15

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @venus_iface_dbgq_read(%struct.venus_hfi_device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
