; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_pre_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_pre_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32 }

@COOKIE_PRE_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%s: asked for transfer of %u bytes exceeds bounce buffer %u bytes\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.mmc_data*, i32)* @sdhci_pre_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pre_dma_transfer(%struct.sdhci_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @COOKIE_PRE_MAPPED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  br label %109

19:                                               ; preds = %3
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %19
  %25 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %24
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @mmc_hostname(%struct.TYPE_3__* %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %109

49:                                               ; preds = %24
  %50 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %51 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %50)
  %52 = load i64, i64* @DMA_TO_DEVICE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @sg_copy_to_buffer(i32 %57, i32 %60, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %54, %49
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %68 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %73 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %76 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %79 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %78)
  %80 = call i32 @dma_sync_single_for_device(i32 %71, i32 %74, i32 %77, i64 %79)
  store i32 1, i32* %8, align 4
  br label %95

81:                                               ; preds = %19
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call i32 @mmc_dev(%struct.TYPE_3__* %84)
  %86 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %90 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %93 = call i64 @mmc_get_dma_dir(%struct.mmc_data* %92)
  %94 = call i32 @dma_map_sg(i32 %85, i32 %88, i32 %91, i64 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %81, %66
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %109

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %104 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %101, %98, %37, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_3__*) #1

declare dso_local i64 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i64, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i64) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i64) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
