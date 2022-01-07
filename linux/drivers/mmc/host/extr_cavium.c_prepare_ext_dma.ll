; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_prepare_ext_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_prepare_ext_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cvm_mmc_slot = type { i32 }

@MIO_EMM_DMA_VAL = common dso_local global i32 0, align 4
@MIO_EMM_DMA_SECTOR = common dso_local global i32 0, align 4
@MIO_EMM_DMA_RW = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MIO_EMM_DMA_BLOCK_CNT = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CARD_ADDR = common dso_local global i32 0, align 4
@SD_SCR_CMD23_SUPPORT = common dso_local global i32 0, align 4
@MIO_EMM_DMA_MULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[%s] blocks: %u  multi: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_request*)* @prepare_ext_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_ext_dma(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.cvm_mmc_slot*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.cvm_mmc_slot* %8, %struct.cvm_mmc_slot** %5, align 8
  %9 = load i32, i32* @MIO_EMM_DMA_VAL, align 4
  %10 = call i32 @FIELD_PREP(i32 %9, i32 1)
  %11 = load i32, i32* @MIO_EMM_DMA_SECTOR, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call i64 @mmc_card_is_blockaddr(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @FIELD_PREP(i32 %11, i32 %18)
  %20 = or i32 %10, %19
  %21 = load i32, i32* @MIO_EMM_DMA_RW, align 4
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MMC_DATA_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = call i32 @FIELD_PREP(i32 %21, i32 %31)
  %33 = or i32 %20, %32
  %34 = load i32, i32* @MIO_EMM_DMA_BLOCK_CNT, align 4
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FIELD_PREP(i32 %34, i32 %39)
  %41 = or i32 %33, %40
  %42 = load i32, i32* @MIO_EMM_DMA_CARD_ADDR, align 4
  %43 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FIELD_PREP(i32 %42, i32 %47)
  %49 = or i32 %41, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %51 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_bus_id(i32* %6, i32 %52)
  %54 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i64 @mmc_card_mmc(%struct.TYPE_10__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %2
  %60 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call i64 @mmc_card_sd(%struct.TYPE_10__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SD_SCR_CMD23_SUPPORT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65, %2
  %76 = load i32, i32* @MIO_EMM_DMA_MULTI, align 4
  %77 = call i32 @FIELD_PREP(i32 %76, i32 1)
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %65, %59
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MIO_EMM_DMA_RW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %87 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MIO_EMM_DMA_MULTI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %86, i32 %91, i32 %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i64 @mmc_card_is_blockaddr(%struct.TYPE_10__*) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i64 @mmc_card_mmc(%struct.TYPE_10__*) #1

declare dso_local i64 @mmc_card_sd(%struct.TYPE_10__*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
