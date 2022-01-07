; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_iface_dbgq_read_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_iface_dbgq_read_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.iface_queue* }
%struct.iface_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFACEQ_DBG_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, i8*)* @venus_iface_dbgq_read_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_iface_dbgq_read_nolock(%struct.venus_hfi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iface_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %10 = call i32 @venus_is_valid_state(%struct.venus_hfi_device* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %18 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %17, i32 0, i32 0
  %19 = load %struct.iface_queue*, %struct.iface_queue** %18, align 8
  %20 = load i64, i64* @IFACEQ_DBG_IDX, align 8
  %21 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %19, i64 %20
  store %struct.iface_queue* %21, %struct.iface_queue** %6, align 8
  %22 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %23 = load %struct.iface_queue*, %struct.iface_queue** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @venus_read_queue(%struct.venus_hfi_device* %22, %struct.iface_queue* %23, i8* %24, i64* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %35 = call i32 @venus_soft_int(%struct.venus_hfi_device* %34)
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @venus_is_valid_state(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_read_queue(%struct.venus_hfi_device*, %struct.iface_queue*, i8*, i64*) #1

declare dso_local i32 @venus_soft_int(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
