; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_disable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32*, %struct.TYPE_2__, i32, %struct.goya_device* }
%struct.TYPE_2__ = type { i32 }
%struct.goya_device = type { i32 }

@HW_CAP_MSIX = common dso_local global i32 0, align 4
@GOYA_EVENT_QUEUE_MSIX_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_disable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_disable_msix(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 4
  %8 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  store %struct.goya_device* %8, %struct.goya_device** %3, align 8
  %9 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %10 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HW_CAP_MSIX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %18 = call i32 @goya_sync_irqs(%struct.hl_device* %17)
  %19 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GOYA_EVENT_QUEUE_MSIX_IDX, align 4
  %23 = call i32 @pci_irq_vector(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 3
  %27 = call i32 @free_irq(i32 %24, i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %49, %16
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pci_irq_vector(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %43 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @free_irq(i32 %41, i32* %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pci_free_irq_vectors(i32 %55)
  %57 = load i32, i32* @HW_CAP_MSIX, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %60 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %15
  ret void
}

declare dso_local i32 @goya_sync_irqs(%struct.hl_device*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
