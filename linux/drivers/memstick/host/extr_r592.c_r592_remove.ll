; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.r592_device = type { i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @r592_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r592_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.r592_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.r592_device* %6, %struct.r592_device** %4, align 8
  %7 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @kthread_stop(i32 %9)
  %11 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %12 = call i32 @r592_enable_device(%struct.r592_device* %11, i32 0)
  br label %13

13:                                               ; preds = %23, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %18 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load i32, i32* @ETIME, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %27 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %31 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %34 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %33, i32 0, i32 5
  %35 = call i32 @memstick_next_req(i32 %32, %struct.TYPE_2__** %34)
  store i32 %35, i32* %3, align 4
  br label %13

36:                                               ; preds = %21
  %37 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %38 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memstick_remove_host(i32 %39)
  %41 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %42 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.r592_device* %44)
  %46 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %47 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iounmap(i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_release_regions(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %55 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memstick_free_host(i32 %56)
  %58 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %59 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %36
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %67 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %70 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %64, i32 %65, i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %36
  ret void
}

declare dso_local %struct.r592_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @r592_enable_device(%struct.r592_device*, i32) #1

declare dso_local i32 @memstick_next_req(i32, %struct.TYPE_2__**) #1

declare dso_local i32 @memstick_remove_host(i32) #1

declare dso_local i32 @free_irq(i32, %struct.r592_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @memstick_free_host(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
