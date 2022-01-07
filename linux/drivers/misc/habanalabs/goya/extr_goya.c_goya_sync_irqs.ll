; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sync_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sync_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__, %struct.goya_device* }
%struct.TYPE_2__ = type { i32 }
%struct.goya_device = type { i32 }

@HW_CAP_MSIX = common dso_local global i32 0, align 4
@GOYA_EVENT_QUEUE_MSIX_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_sync_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_sync_irqs(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 2
  %7 = load %struct.goya_device*, %struct.goya_device** %6, align 8
  store %struct.goya_device* %7, %struct.goya_device** %3, align 8
  %8 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %9 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HW_CAP_MSIX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %40

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pci_irq_vector(i32 %26, i32 %27)
  %29 = call i32 @synchronize_irq(i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GOYA_EVENT_QUEUE_MSIX_IDX, align 4
  %38 = call i32 @pci_irq_vector(i32 %36, i32 %37)
  %39 = call i32 @synchronize_irq(i32 %38)
  br label %40

40:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
