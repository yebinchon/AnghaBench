; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_set_dma_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_set_dma_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Warning: couldn't set 64-bit PCI DMA mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't set PCI DMA mask, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Warning: couldn't set 64-bit consistent PCI DMA mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Can't set consistent PCI DMA mask, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @set_dma_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dma_caps(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call i32 @DMA_BIT_MASK(i32 64)
  %7 = call i32 @pci_set_dma_mask(%struct.pci_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_warn(i32* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @DMA_BIT_MASK(i32 32)
  %16 = call i32 @pci_set_dma_mask(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @DMA_BIT_MASK(i32 64)
  %28 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @DMA_BIT_MASK(i32 32)
  %37 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dma_set_max_seg_size(i32* %48, i32 -2147483648)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %40, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_max_seg_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
