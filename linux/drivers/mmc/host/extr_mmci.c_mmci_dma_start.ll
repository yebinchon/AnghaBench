; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i64, %struct.TYPE_2__*, i32, i32, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 (%struct.mmci_host*, i32*)* }
%struct.mmc_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Submit MMCI DMA job, sglen %d blksz %04x blks %04x flags %08x\0A\00", align 1
@MMCIMASK0 = common dso_local global i64 0, align 8
@MCI_DATAENDMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmci_dma_start(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %9 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %8, i32 0, i32 4
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %6, align 8
  %11 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %12 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %21 = call i32 @mmci_prep_data(%struct.mmci_host* %19, %struct.mmc_data* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %18
  %27 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %28 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %33 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mmci_host*, i32*)*, i32 (%struct.mmci_host*, i32*)** %35, align 8
  %37 = icmp ne i32 (%struct.mmci_host*, i32*)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %83

41:                                               ; preds = %31
  %42 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %43 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mmc_dev(i32 %44)
  %46 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %53 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_vdbg(i32 %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %60 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.mmci_host*, i32*)*, i32 (%struct.mmci_host*, i32*)** %62, align 8
  %64 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %65 = call i32 %63(%struct.mmci_host* %64, i32* %5)
  %66 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mmci_write_datactrlreg(%struct.mmci_host* %66, i32 %67)
  %69 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %70 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MMCIMASK0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  %75 = load i32, i32* @MCI_DATAENDMASK, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %78 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MMCIMASK0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %41, %38, %24, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mmci_prep_data(%struct.mmci_host*, %struct.mmc_data*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmci_write_datactrlreg(%struct.mmci_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
