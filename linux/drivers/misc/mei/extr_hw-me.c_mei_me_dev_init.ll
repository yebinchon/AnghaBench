; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.mei_cfg = type { i32, i32* }
%struct.mei_me_hw = type { %struct.mei_cfg* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_DSCR_NUM = common dso_local global i32 0, align 4
@mei_me_hw_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_device* @mei_me_dev_init(%struct.pci_dev* %0, %struct.mei_cfg* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mei_cfg*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca %struct.mei_me_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.mei_cfg* %1, %struct.mei_cfg** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mei_device* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.mei_device* %12, %struct.mei_device** %6, align 8
  %13 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %14 = icmp ne %struct.mei_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.mei_device* null, %struct.mei_device** %3, align 8
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %18 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %17)
  store %struct.mei_me_hw* %18, %struct.mei_me_hw** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %38, %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DMA_DSCR_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.mei_cfg*, %struct.mei_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.mei_cfg, %struct.mei_cfg* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @mei_device_init(%struct.mei_device* %42, i32* %44, i32* @mei_me_hw_ops)
  %46 = load %struct.mei_cfg*, %struct.mei_cfg** %5, align 8
  %47 = load %struct.mei_me_hw*, %struct.mei_me_hw** %7, align 8
  %48 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %47, i32 0, i32 0
  store %struct.mei_cfg* %46, %struct.mei_cfg** %48, align 8
  %49 = load %struct.mei_cfg*, %struct.mei_cfg** %5, align 8
  %50 = getelementptr inbounds %struct.mei_cfg, %struct.mei_cfg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  store %struct.mei_device* %54, %struct.mei_device** %3, align 8
  br label %55

55:                                               ; preds = %41, %15
  %56 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  ret %struct.mei_device* %56
}

declare dso_local %struct.mei_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_device_init(%struct.mei_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
