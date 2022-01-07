; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }

@MMCIF_CE_BUF_ACC = common dso_local global i32 0, align 4
@BUF_ACC_DMAREN = common dso_local global i32 0, align 4
@BUF_ACC_DMAWEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*)* @sh_mmcif_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_release_dma(%struct.sh_mmcif_host* %0) #0 {
  %2 = alloca %struct.sh_mmcif_host*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %2, align 8
  %5 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %6 = load i32, i32* @MMCIF_CE_BUF_ACC, align 4
  %7 = load i32, i32* @BUF_ACC_DMAREN, align 4
  %8 = load i32, i32* @BUF_ACC_DMAWEN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host* %5, i32 %6, i32 %9)
  %11 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %12 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %11, i32 0, i32 2
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %14 = icmp ne %struct.dma_chan* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %17 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %16, i32 0, i32 2
  %18 = load %struct.dma_chan*, %struct.dma_chan** %17, align 8
  store %struct.dma_chan* %18, %struct.dma_chan** %3, align 8
  %19 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %20 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %19, i32 0, i32 2
  store %struct.dma_chan* null, %struct.dma_chan** %20, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %22 = call i32 @dma_release_channel(%struct.dma_chan* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %25 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %24, i32 0, i32 1
  %26 = load %struct.dma_chan*, %struct.dma_chan** %25, align 8
  %27 = icmp ne %struct.dma_chan* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %30 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %29, i32 0, i32 1
  %31 = load %struct.dma_chan*, %struct.dma_chan** %30, align 8
  store %struct.dma_chan* %31, %struct.dma_chan** %4, align 8
  %32 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %33 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %32, i32 0, i32 1
  store %struct.dma_chan* null, %struct.dma_chan** %33, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %35 = call i32 @dma_release_channel(%struct.dma_chan* %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %38 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  ret void
}

declare dso_local i32 @sh_mmcif_bitclr(%struct.sh_mmcif_host*, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
