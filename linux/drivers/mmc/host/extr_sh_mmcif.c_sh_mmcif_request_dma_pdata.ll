; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_request_dma_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_request_dma_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sh_mmcif_host = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@shdma_chan_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.sh_mmcif_host*, i64)* @sh_mmcif_request_dma_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @sh_mmcif_request_dma_pdata(%struct.sh_mmcif_host* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.sh_mmcif_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dma_cap_zero(i32 %7)
  %9 = load i32, i32* @DMA_SLAVE, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dma_cap_set(i32 %9, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @shdma_chan_filter, align 4
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call %struct.dma_chan* @dma_request_channel(i32 %16, i32 %17, i8* %19)
  store %struct.dma_chan* %20, %struct.dma_chan** %3, align 8
  br label %21

21:                                               ; preds = %15, %14
  %22 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %22
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
