; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.dt3155_priv = type { i32, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }

@EVEN_DMA_START = common dso_local global i64 0, align 8
@ODD_DMA_START = common dso_local global i64 0, align 8
@EVEN_DMA_STRIDE = common dso_local global i64 0, align 8
@ODD_DMA_STRIDE = common dso_local global i64 0, align 8
@FLD_START_EN = common dso_local global i32 0, align 4
@FLD_END_ODD_EN = common dso_local global i32 0, align 4
@FLD_START = common dso_local global i32 0, align 4
@FLD_END_EVEN = common dso_local global i32 0, align 4
@FLD_END_ODD = common dso_local global i32 0, align 4
@INT_CSR = common dso_local global i64 0, align 8
@FIFO_EN = common dso_local global i32 0, align 4
@SRST = common dso_local global i32 0, align 4
@FLD_CRPT_ODD = common dso_local global i32 0, align 4
@FLD_CRPT_EVEN = common dso_local global i32 0, align 4
@FLD_DN_ODD = common dso_local global i32 0, align 4
@FLD_DN_EVEN = common dso_local global i32 0, align 4
@CAP_CONT_EVEN = common dso_local global i32 0, align 4
@CAP_CONT_ODD = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i32 0, align 4
@EVEN_CSR = common dso_local global i32 0, align 4
@CSR_ERROR = common dso_local global i32 0, align 4
@CSR_DONE = common dso_local global i32 0, align 4
@ODD_CSR = common dso_local global i32 0, align 4
@CSR2 = common dso_local global i32 0, align 4
@BUSY_EVEN = common dso_local global i32 0, align 4
@BUSY_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @dt3155_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dt3155_priv*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %9 = call %struct.dt3155_priv* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.dt3155_priv* %9, %struct.dt3155_priv** %5, align 8
  %10 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %11 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.vb2_buffer* %13, %struct.vb2_buffer** %6, align 8
  %14 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %17 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %20 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EVEN_DMA_START, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite32(i32 %18, i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %27 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  %30 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %31 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ODD_DMA_START, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  %36 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %37 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %40 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EVEN_DMA_STRIDE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  %45 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %46 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %49 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ODD_DMA_STRIDE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite32(i32 %47, i64 %52)
  %54 = load i32, i32* @FLD_START_EN, align 4
  %55 = load i32, i32* @FLD_END_ODD_EN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FLD_START, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FLD_END_EVEN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FLD_END_ODD, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %64 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @INT_CSR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32(i32 %62, i64 %67)
  %69 = load i32, i32* @FIFO_EN, align 4
  %70 = load i32, i32* @SRST, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FLD_CRPT_ODD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FLD_CRPT_EVEN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @FLD_DN_ODD, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FLD_DN_EVEN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CAP_CONT_EVEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CAP_CONT_ODD, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %85 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CSR1, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite32(i32 %83, i64 %88)
  %90 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %91 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @wait_i2c_reg(i64 %92)
  %94 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %95 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @CONFIG, align 4
  %98 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %99 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @write_i2c_reg(i64 %96, i32 %97, i32 %100)
  %102 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %103 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @EVEN_CSR, align 4
  %106 = load i32, i32* @CSR_ERROR, align 4
  %107 = load i32, i32* @CSR_DONE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @write_i2c_reg(i64 %104, i32 %105, i32 %108)
  %110 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %111 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @ODD_CSR, align 4
  %114 = load i32, i32* @CSR_ERROR, align 4
  %115 = load i32, i32* @CSR_DONE, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @write_i2c_reg(i64 %112, i32 %113, i32 %116)
  %118 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %119 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @CSR2, align 4
  %122 = load %struct.dt3155_priv*, %struct.dt3155_priv** %5, align 8
  %123 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUSY_EVEN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @BUSY_ODD, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @write_i2c_reg(i64 %120, i32 %121, i32 %128)
  ret i32 0
}

declare dso_local %struct.dt3155_priv* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @wait_i2c_reg(i64) #1

declare dso_local i32 @write_i2c_reg(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
