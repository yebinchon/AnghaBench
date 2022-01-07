; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_get_queue_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_get_queue_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi_queue_header* }
%struct.hfi_queue_header = type { i64, i64 }

@IFACEQ_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, i32)* @venus_get_queue_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_get_queue_size(%struct.venus_hfi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_queue_header*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IFACEQ_NUM, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %15 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %20, align 8
  store %struct.hfi_queue_header* %21, %struct.hfi_queue_header** %6, align 8
  %22 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %6, align 8
  %23 = icmp ne %struct.hfi_queue_header* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %13
  %28 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %6, align 8
  %29 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %6, align 8
  %32 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @abs(i64 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %24, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
