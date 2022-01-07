; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_do_test_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_do_test_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }
%struct.tg3_internal_buffer_desc = type { i32, i32, i32, i32, i32, i32 }

@NIC_SRAM_DMA_DESC_POOL_BASE = common dso_local global i32 0, align 4
@FTQ_RCVBD_COMP_FIFO_ENQDEQ = common dso_local global i32 0, align 4
@FTQ_RCVDATA_COMP_FIFO_ENQDEQ = common dso_local global i32 0, align 4
@RDMAC_STATUS = common dso_local global i32 0, align 4
@WDMAC_STATUS = common dso_local global i32 0, align 4
@BUFMGR_MODE = common dso_local global i32 0, align 4
@FTQ_RESET = common dso_local global i32 0, align 4
@RDMAC_MODE = common dso_local global i32 0, align 4
@RDMAC_MODE_ENABLE = common dso_local global i32 0, align 4
@WDMAC_MODE = common dso_local global i32 0, align 4
@WDMAC_MODE_ENABLE = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_BASE_ADDR = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_DATA = common dso_local global i32 0, align 4
@FTQ_DMA_HIGH_READ_FIFO_ENQDEQ = common dso_local global i32 0, align 4
@FTQ_DMA_HIGH_WRITE_FIFO_ENQDEQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32*, i32, i32, i32)* @tg3_do_test_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_do_test_dma(%struct.tg3* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tg3_internal_buffer_desc, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @NIC_SRAM_DMA_DESC_POOL_BASE, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @FTQ_RCVBD_COMP_FIFO_ENQDEQ, align 4
  %19 = call i32 @tw32(i32 %18, i32 0)
  %20 = load i32, i32* @FTQ_RCVDATA_COMP_FIFO_ENQDEQ, align 4
  %21 = call i32 @tw32(i32 %20, i32 0)
  %22 = load i32, i32* @RDMAC_STATUS, align 4
  %23 = call i32 @tw32(i32 %22, i32 0)
  %24 = load i32, i32* @WDMAC_STATUS, align 4
  %25 = call i32 @tw32(i32 %24, i32 0)
  %26 = load i32, i32* @BUFMGR_MODE, align 4
  %27 = call i32 @tw32(i32 %26, i32 0)
  %28 = load i32, i32* @FTQ_RESET, align 4
  %29 = call i32 @tw32(i32 %28, i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 32
  %32 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 2
  store i32 8448, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 4
  store i32 3330, i32* %41, align 4
  %42 = load i32, i32* @RDMAC_MODE, align 4
  %43 = load i32, i32* @RDMAC_MODE_ENABLE, align 4
  %44 = call i32 @tw32_f(i32 %42, i32 %43)
  %45 = call i32 @udelay(i32 40)
  br label %52

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 4
  store i32 4103, i32* %47, align 4
  %48 = load i32, i32* @WDMAC_MODE, align 4
  %49 = load i32, i32* @WDMAC_MODE_ENABLE, align 4
  %50 = call i32 @tw32_f(i32 %48, i32 %49)
  %51 = call i32 @udelay(i32 40)
  br label %52

52:                                               ; preds = %46, %40
  %53 = getelementptr inbounds %struct.tg3_internal_buffer_desc, %struct.tg3_internal_buffer_desc* %11, i32 0, i32 5
  store i32 5, i32* %53, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %82, %52
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 6
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = bitcast %struct.tg3_internal_buffer_desc* %11 to i32*
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  %64 = load %struct.tg3*, %struct.tg3** %6, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 %69, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @pci_write_config_dword(i32 %66, i32 %67, i32 %74)
  %76 = load %struct.tg3*, %struct.tg3** %6, align 8
  %77 = getelementptr inbounds %struct.tg3, %struct.tg3* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TG3PCI_MEM_WIN_DATA, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @pci_write_config_dword(i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.tg3*, %struct.tg3** %6, align 8
  %87 = getelementptr inbounds %struct.tg3, %struct.tg3* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %90 = call i32 @pci_write_config_dword(i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @FTQ_DMA_HIGH_READ_FIFO_ENQDEQ, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @tw32(i32 %94, i32 %95)
  br label %101

97:                                               ; preds = %85
  %98 = load i32, i32* @FTQ_DMA_HIGH_WRITE_FIFO_ENQDEQ, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @tw32(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %124, %101
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 40
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @FTQ_RCVBD_COMP_FIFO_ENQDEQ, align 4
  %112 = call i32 @tr32(i32 %111)
  store i32 %112, i32* %16, align 4
  br label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @FTQ_RCVDATA_COMP_FIFO_ENQDEQ, align 4
  %115 = call i32 @tr32(i32 %114)
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %16, align 4
  %118 = and i32 %117, 65535
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %14, align 4
  br label %127

122:                                              ; preds = %116
  %123 = call i32 @udelay(i32 100)
  br label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %104

127:                                              ; preds = %121, %104
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @tr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
