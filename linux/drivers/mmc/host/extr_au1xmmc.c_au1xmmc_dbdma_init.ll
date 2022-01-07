; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_DMA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@memid = common dso_local global i32 0, align 4
@au1xmmc_dbdma_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot allocate TX DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot allocate RX DMA\0A\00", align 1
@AU1XMMC_DESCRIPTOR_COUNT = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@HOST_F_DBDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xmmc_host*)* @au1xmmc_dbdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_dbdma_init(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  %7 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @IORESOURCE_DMA, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = load %struct.resource*, %struct.resource** %4, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %112

17:                                               ; preds = %1
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @IORESOURCE_DMA, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %23, i32 %24, i32 1)
  store %struct.resource* %25, %struct.resource** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %17
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @memid, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %112

40:                                               ; preds = %31
  %41 = load i32, i32* @memid, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @au1xmmc_dbdma_callback, align 4
  %44 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %45 = bitcast %struct.au1xmmc_host* %44 to i8*
  %46 = call i8* @au1xxx_dbdma_chan_alloc(i32 %41, i32 %42, i32 %43, i8* %45)
  %47 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %40
  %54 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %112

61:                                               ; preds = %40
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @memid, align 4
  %64 = load i32, i32* @au1xmmc_dbdma_callback, align 4
  %65 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %66 = bitcast %struct.au1xmmc_host* %65 to i8*
  %67 = call i8* @au1xxx_dbdma_chan_alloc(i32 %62, i32 %63, i32 %64, i8* %66)
  %68 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %71 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %61
  %75 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %76 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @au1xxx_dbdma_chan_free(i8* %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %112

86:                                               ; preds = %61
  %87 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %88 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @au1xxx_dbdma_set_devwidth(i8* %89, i32 8)
  %91 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %92 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @au1xxx_dbdma_set_devwidth(i8* %93, i32 8)
  %95 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @AU1XMMC_DESCRIPTOR_COUNT, align 4
  %99 = call i32 @au1xxx_dbdma_ring_alloc(i8* %97, i32 %98)
  %100 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %101 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @AU1XMMC_DESCRIPTOR_COUNT, align 4
  %104 = call i32 @au1xxx_dbdma_ring_alloc(i8* %102, i32 %103)
  %105 = load i32, i32* @HOST_F_DMA, align 4
  %106 = load i32, i32* @HOST_F_DBDMA, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %109 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %86, %74, %53, %37, %28, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @au1xxx_dbdma_chan_alloc(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @au1xxx_dbdma_chan_free(i8*) #1

declare dso_local i32 @au1xxx_dbdma_set_devwidth(i8*, i32) #1

declare dso_local i32 @au1xxx_dbdma_ring_alloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
