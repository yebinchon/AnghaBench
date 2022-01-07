; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_power_on(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %3, align 8
  %5 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %6 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %12 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @venus_set_hw_state_resume(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %32

18:                                               ; preds = %10
  %19 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %20 = call i32 @venus_run(%struct.venus_hfi_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %26 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %36

27:                                               ; preds = %23
  %28 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %29 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @venus_set_hw_state_suspend(i32 %30)
  br label %32

32:                                               ; preds = %27, %17
  %33 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %34 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %24, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @venus_set_hw_state_resume(i32) #1

declare dso_local i32 @venus_run(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_set_hw_state_suspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
