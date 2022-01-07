; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_omni_sg_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_omni_sg_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32, i32, i64 }

@CAPABILITY_REGISTER = common dso_local global i32 0, align 4
@PCI_64BIT = common dso_local global i32 0, align 4
@DONE = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@DMA_TYPE_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omni_sg_dma_init(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %7 = load i32, i32* @CAPABILITY_REGISTER, align 4
  %8 = call i32 @ioread32(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %10 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 15
  %13 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %14 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCI_64BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %21 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %24 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %29 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CS_REG(i32 %33)
  %35 = call i32 @ioread32(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CS_REG(i32 %36)
  %38 = call i32 @ioread32(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ABORT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CS_REG(i32 %45)
  %47 = call i32 @iowrite32(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %32
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DMA_TYPE_FIFO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %55 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %64 = call i32 @show_dma_capability(%struct.cobalt* %63)
  ret i32 0
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @CS_REG(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @show_dma_capability(%struct.cobalt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
