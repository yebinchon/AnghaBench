; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.pci_dev = type { i32 }

@BNAD_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.pci_dev*, i32*)* @bnad_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_pci_init(%struct.bnad* %0, %struct.pci_dev* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = load i32, i32* @BNAD_NAME, align 4
  %18 = call i32 @pci_request_regions(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @DMA_BIT_MASK(i32 64)
  %26 = call i32 @dma_set_mask_and_coherent(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  store i32 1, i32* %29, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = call i32 @dma_set_mask_and_coherent(i32* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %43

38:                                               ; preds = %30
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = call i32 @pci_set_master(%struct.pci_dev* %41)
  store i32 0, i32* %4, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = call i32 @pci_release_regions(%struct.pci_dev* %44)
  br label %46

46:                                               ; preds = %43, %21
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %40, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
