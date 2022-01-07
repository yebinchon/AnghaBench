; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_prepare_power_collapse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_prepare_power_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }
%struct.hfi_sys_pc_prep_pkt = type { i32 }

@venus_hw_rsp_timeout = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, i32)* @venus_prepare_power_collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_prepare_power_collapse(%struct.venus_hfi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hfi_sys_pc_prep_pkt, align 4
  %8 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @venus_hw_rsp_timeout, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %12 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %11, i32 0, i32 0
  %13 = call i32 @init_completion(i32* %12)
  %14 = call i32 @pkt_sys_pc_prep(%struct.hfi_sys_pc_prep_pkt* %7)
  %15 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %16 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %15, %struct.hfi_sys_pc_prep_pkt* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %21
  %26 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %27 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @wait_for_completion_timeout(i32* %27, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %34 = call i32 @venus_flush_debug_queue(%struct.venus_hfi_device* %33)
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %24, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pkt_sys_pc_prep(%struct.hfi_sys_pc_prep_pkt*) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_sys_pc_prep_pkt*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @venus_flush_debug_queue(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
