; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_dma_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_set_dma_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i32 }

@ST = common dso_local global i32 0, align 4
@AT = common dso_local global i32 0, align 4
@PH = common dso_local global i32 0, align 4
@NO_SNOOPING = common dso_local global i32 0, align 4
@TPH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_hwif*, i32, i32, i32, i32, i32, i32)* @set_dma_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dma_attr(%struct.hinic_hwif* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @HINIC_CSR_DMA_ATTR_ADDR(i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %20, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @ST, align 4
  %25 = call i32 @HINIC_DMA_ATTR_CLEAR(i32 %23, i32 %24)
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @AT, align 4
  %28 = call i32 @HINIC_DMA_ATTR_CLEAR(i32 %26, i32 %27)
  %29 = and i32 %25, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @PH, align 4
  %32 = call i32 @HINIC_DMA_ATTR_CLEAR(i32 %30, i32 %31)
  %33 = and i32 %29, %32
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @NO_SNOOPING, align 4
  %36 = call i32 @HINIC_DMA_ATTR_CLEAR(i32 %34, i32 %35)
  %37 = and i32 %33, %36
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @TPH_EN, align 4
  %40 = call i32 @HINIC_DMA_ATTR_CLEAR(i32 %38, i32 %39)
  %41 = and i32 %37, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ST, align 4
  %44 = call i32 @HINIC_DMA_ATTR_SET(i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AT, align 4
  %47 = call i32 @HINIC_DMA_ATTR_SET(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @PH, align 4
  %51 = call i32 @HINIC_DMA_ATTR_SET(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @NO_SNOOPING, align 4
  %55 = call i32 @HINIC_DMA_ATTR_SET(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @TPH_EN, align 4
  %59 = call i32 @HINIC_DMA_ATTR_SET(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %16, align 4
  %64 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @HINIC_CSR_DMA_ATTR_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_DMA_ATTR_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_DMA_ATTR_SET(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
