; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @cqhci_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_post_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %5, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %10 = icmp ne %struct.mmc_data* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call i32 @mmc_dev(%struct.mmc_host* %12)
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_DATA_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @dma_unmap_sg(i32 %13, i32 %16, i32 %19, i32 %31)
  br label %33

33:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
