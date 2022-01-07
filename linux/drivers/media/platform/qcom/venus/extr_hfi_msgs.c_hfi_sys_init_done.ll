; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_sys_init_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_sys_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32, i64 }
%struct.venus_inst = type { i32 }
%struct.hfi_msg_sys_init_done_pkt = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@HFI_ERR_NONE = common dso_local global i64 0, align 8
@HFI_ERR_SYS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HFI_ERR_SYS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, i8*)* @hfi_sys_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi_sys_init_done(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_msg_sys_init_done_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.hfi_msg_sys_init_done_pkt*
  store %struct.hfi_msg_sys_init_done_pkt* %11, %struct.hfi_msg_sys_init_done_pkt** %7, align 8
  %12 = load %struct.hfi_msg_sys_init_done_pkt*, %struct.hfi_msg_sys_init_done_pkt** %7, align 8
  %13 = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, %struct.hfi_msg_sys_init_done_pkt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @HFI_ERR_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.hfi_msg_sys_init_done_pkt*, %struct.hfi_msg_sys_init_done_pkt** %7, align 8
  %21 = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, %struct.hfi_msg_sys_init_done_pkt* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @HFI_ERR_SYS_INVALID_PARAMETER, align 8
  store i64 %25, i64* %9, align 8
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.hfi_msg_sys_init_done_pkt*, %struct.hfi_msg_sys_init_done_pkt** %7, align 8
  %28 = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, %struct.hfi_msg_sys_init_done_pkt* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 24
  %33 = add i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* @HFI_ERR_SYS_INSUFFICIENT_RESOURCES, align 8
  store i64 %38, i64* %9, align 8
  br label %47

39:                                               ; preds = %26
  %40 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %41 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %42 = load %struct.hfi_msg_sys_init_done_pkt*, %struct.hfi_msg_sys_init_done_pkt** %7, align 8
  %43 = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, %struct.hfi_msg_sys_init_done_pkt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @hfi_parser(%struct.venus_core* %40, %struct.venus_inst* %41, i32 %44, i32 %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %39, %37, %24, %18
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %50 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %52 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %51, i32 0, i32 0
  %53 = call i32 @complete(i32* %52)
  ret void
}

declare dso_local i64 @hfi_parser(%struct.venus_core*, %struct.venus_inst*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
