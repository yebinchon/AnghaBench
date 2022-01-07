; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_late_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_late_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @device_late_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_late_fini(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %4 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 4
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 2
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  br label %20

20:                                               ; preds = %16, %8
  %21 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.hl_device*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %31, align 8
  %33 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %34 = call i32 %32(%struct.hl_device* %33)
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
