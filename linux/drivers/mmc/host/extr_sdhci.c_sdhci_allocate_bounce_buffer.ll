; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_allocate_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_allocate_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, i32, i32 }

@SZ_64K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"%s: failed to allocate %u bytes for bounce buffer, falling back to single segments\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"%s bounce up to %u segments into one, max segment size %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_allocate_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_allocate_bounce_buffer(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 3
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %3, align 8
  %10 = load i32, i32* @SZ_64K, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %21, 512
  store i32 %22, i32* %4, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @devm_kmalloc(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = call i32 @mmc_hostname(%struct.mmc_host* %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %80

40:                                               ; preds = %20
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_map_single(i32 %43, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dma_mapping_error(i32 %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %80

62:                                               ; preds = %40
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %76 = call i32 @mmc_hostname(%struct.mmc_host* %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %62, %61, %35
  ret void
}

declare dso_local i32 @devm_kmalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
