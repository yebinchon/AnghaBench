; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_early_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_early_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @device_early_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_early_fini(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %4 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %3, i32 0, i32 9
  %5 = call i32 @mutex_destroy(i32* %4)
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 8
  %8 = call i32 @mutex_destroy(i32* %7)
  %9 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 7
  %11 = call i32 @mutex_destroy(i32* %10)
  %12 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 6
  %14 = call i32 @mutex_destroy(i32* %13)
  %15 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %16 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 5
  %18 = call i32 @hl_cb_mgr_fini(%struct.hl_device* %15, i32* %17)
  %19 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @kfree(i32 %25)
  %27 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @destroy_workqueue(i32 %33)
  %35 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %36 = call i32 @hl_asid_fini(%struct.hl_device* %35)
  %37 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %40, align 8
  %42 = icmp ne i32 (%struct.hl_device*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %47, align 8
  %49 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %50 = call i32 %48(%struct.hl_device* %49)
  br label %51

51:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @hl_cb_mgr_fini(%struct.hl_device*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hl_asid_fini(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
