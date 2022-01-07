; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_are_queues_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_are_queues_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32 }

@IFACEQ_MSG_IDX = common dso_local global i32 0, align 4
@IFACEQ_CMD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_are_queues_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_are_queues_empty(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %3, align 8
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %7 = load i32, i32* @IFACEQ_MSG_IDX, align 4
  %8 = call i32 @venus_get_queue_size(%struct.venus_hfi_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %15 = load i32, i32* @IFACEQ_CMD_IDX, align 4
  %16 = call i32 @venus_get_queue_size(%struct.venus_hfi_device* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %19, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @venus_get_queue_size(%struct.venus_hfi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
