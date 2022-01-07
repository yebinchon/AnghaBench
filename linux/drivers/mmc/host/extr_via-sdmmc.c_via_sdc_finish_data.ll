; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_finish_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i64, i32, i32, i64 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*)* @via_sdc_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_finish_data(%struct.via_crdr_mmc_host* %0) #0 {
  %2 = alloca %struct.via_crdr_mmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %2, align 8
  %4 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %4, i32 0, i32 2
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %7 = icmp ne %struct.mmc_data* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %11, i32 0, i32 2
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %3, align 8
  %14 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %14, i32 0, i32 2
  store %struct.mmc_data* null, %struct.mmc_data** %15, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %23, %20
  %34 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mmc_dev(i32 %36)
  %38 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MMC_DATA_READ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @dma_unmap_sg(i32 %37, i32 %40, i32 %43, i32 %55)
  %57 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %63 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @via_sdc_send_command(%struct.via_crdr_mmc_host* %62, i64 %65)
  br label %71

67:                                               ; preds = %54
  %68 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %69 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %68, i32 0, i32 0
  %70 = call i32 @tasklet_schedule(i32* %69)
  br label %71

71:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @via_sdc_send_command(%struct.via_crdr_mmc_host*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
