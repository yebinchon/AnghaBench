; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_set_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.hfi_buffer_desc = type { i64 }
%struct.venus_hfi_device = type { i32 }
%struct.hfi_session_set_buffers_pkt = type { i32 }

@IFACEQ_VAR_LARGE_PKT_SIZE = common dso_local global i32 0, align 4
@HFI_BUFFER_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, %struct.hfi_buffer_desc*)* @venus_session_set_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_session_set_buffers(%struct.venus_inst* %0, %struct.hfi_buffer_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.hfi_buffer_desc*, align 8
  %6 = alloca %struct.venus_hfi_device*, align 8
  %7 = alloca %struct.hfi_session_set_buffers_pkt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.hfi_buffer_desc* %1, %struct.hfi_buffer_desc** %5, align 8
  %12 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.venus_hfi_device* @to_hfi_priv(i32 %14)
  store %struct.venus_hfi_device* %15, %struct.venus_hfi_device** %6, align 8
  %16 = load i32, i32* @IFACEQ_VAR_LARGE_PKT_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %21 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HFI_BUFFER_INPUT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %40

26:                                               ; preds = %2
  %27 = bitcast i32* %19 to %struct.hfi_session_set_buffers_pkt*
  store %struct.hfi_session_set_buffers_pkt* %27, %struct.hfi_session_set_buffers_pkt** %7, align 8
  %28 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %7, align 8
  %29 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %30 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %5, align 8
  %31 = call i32 @pkt_session_set_buffers(%struct.hfi_session_set_buffers_pkt* %28, %struct.venus_inst* %29, %struct.hfi_buffer_desc* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %6, align 8
  %38 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %7, align 8
  %39 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %37, %struct.hfi_session_set_buffers_pkt* %38)
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %34, %25
  %41 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pkt_session_set_buffers(%struct.hfi_session_set_buffers_pkt*, %struct.venus_inst*, %struct.hfi_buffer_desc*) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_session_set_buffers_pkt*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
