; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i64, i32, i32, i64 }

@R852_DMA_SETTINGS = common dso_local global i32 0, align 4
@R852_DMA_READ = common dso_local global i32 0, align 4
@R852_DMA_INTERNAL = common dso_local global i32 0, align 4
@R852_DMA_MEMORY = common dso_local global i32 0, align 4
@DMA_INTERNAL = common dso_local global i64 0, align 8
@R852_DMA_ADDR = common dso_local global i32 0, align 4
@R852_DMA_IRQ_ENABLE = common dso_local global i32 0, align 4
@R852_DMA_IRQ_INTERNAL = common dso_local global i32 0, align 4
@R852_DMA_IRQ_ERROR = common dso_local global i32 0, align 4
@R852_DMA_IRQ_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_dma_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_dma_enable(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %5 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %6 = load i32, i32* @R852_DMA_SETTINGS, align 4
  %7 = call i32 @r852_read_reg_dword(%struct.r852_device* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @R852_DMA_READ, align 4
  %9 = load i32, i32* @R852_DMA_INTERNAL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @R852_DMA_MEMORY, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %17 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @R852_DMA_READ, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %26 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMA_INTERNAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @R852_DMA_INTERNAL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %35 = load i32, i32* @R852_DMA_ADDR, align 4
  %36 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %37 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = call i32 @r852_write_reg_dword(%struct.r852_device* %34, i32 %35, i32 %39)
  br label %52

41:                                               ; preds = %24
  %42 = load i32, i32* @R852_DMA_MEMORY, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %46 = load i32, i32* @R852_DMA_ADDR, align 4
  %47 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %48 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = call i32 @r852_write_reg_dword(%struct.r852_device* %45, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %41, %30
  %53 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %54 = load i32, i32* @R852_DMA_ADDR, align 4
  %55 = call i32 @r852_read_reg_dword(%struct.r852_device* %53, i32 %54)
  %56 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %57 = load i32, i32* @R852_DMA_SETTINGS, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @r852_write_reg_dword(%struct.r852_device* %56, i32 %57, i32 %58)
  %60 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %61 = load i32, i32* @R852_DMA_IRQ_ENABLE, align 4
  %62 = call i32 @r852_read_reg_dword(%struct.r852_device* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %64 = load i32, i32* @R852_DMA_IRQ_ENABLE, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @R852_DMA_IRQ_INTERNAL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @R852_DMA_IRQ_ERROR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @R852_DMA_IRQ_MEMORY, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @r852_write_reg_dword(%struct.r852_device* %63, i32 %64, i32 %71)
  ret void
}

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_write_reg_dword(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
