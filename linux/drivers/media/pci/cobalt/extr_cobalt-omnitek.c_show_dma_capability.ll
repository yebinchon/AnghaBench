; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_show_dma_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-omnitek.c_show_dma_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }

@CAPABILITY_HEADER = common dso_local global i32 0, align 4
@CAPABILITY_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Omnitek DMA capability: ID 0x%02x Version 0x%02x Next 0x%x Size 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Omnitek DMA: 32 bits PCIe and Local\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Omnitek DMA: 64 bits PCIe, 32 bits Local\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Omnitek DMA: 64 bits PCIe and Local\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Omnitek DMA channel #%d: %s %s\0A\00", align 1
@DMA_TYPE_FIFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*)* @show_dma_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dma_capability(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %7 = load i32, i32* @CAPABILITY_HEADER, align 4
  %8 = call i32 @ioread32(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CAPABILITY_REGISTER, align 4
  %10 = call i32 @ioread32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 65535
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  switch i32 %25, label %32 [
    i32 0, label %26
    i32 1, label %28
    i32 3, label %30
  ]

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %32

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %32

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %1, %30, %28, %26
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 15
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CS_REG(i32 %39)
  %41 = call i32 @ioread32(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DMA_TYPE_FIFO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @get_dma_direction(i32 %49)
  %51 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %42, i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @cobalt_info(i8*, ...) #1

declare dso_local i32 @CS_REG(i32) #1

declare dso_local i32 @get_dma_direction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
