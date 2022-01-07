; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.frame_buffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ISI_CFG1 = common dso_local global i32 0, align 4
@ISI_INTEN = common dso_local global i32 0, align 4
@ISI_SR_CXFR_DONE = common dso_local global i32 0, align 4
@ISI_SR_PXFR_DONE = common dso_local global i32 0, align 4
@ISI_STATUS = common dso_local global i32 0, align 4
@ISI_CTRL_CDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Already in frame handling.\0A\00", align 1
@ISI_DMA_C_DSCR = common dso_local global i32 0, align 4
@ISI_DMA_C_CTRL = common dso_local global i32 0, align 4
@ISI_DMA_CTRL_FETCH = common dso_local global i32 0, align 4
@ISI_DMA_CTRL_DONE = common dso_local global i32 0, align 4
@ISI_DMA_CHER = common dso_local global i32 0, align 4
@ISI_DMA_CHSR_C_CH = common dso_local global i32 0, align 4
@ISI_DMA_P_DSCR = common dso_local global i32 0, align 4
@ISI_DMA_P_CTRL = common dso_local global i32 0, align 4
@ISI_DMA_CHSR_P_CH = common dso_local global i32 0, align 4
@ISI_CFG1_FRATE_DIV_MASK = common dso_local global i32 0, align 4
@ISI_CFG1_DISCR = common dso_local global i32 0, align 4
@ISI_CTRL_EN = common dso_local global i32 0, align 4
@ISI_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_isi*, %struct.frame_buffer*)* @start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dma(%struct.atmel_isi* %0, %struct.frame_buffer* %1) #0 {
  %3 = alloca %struct.atmel_isi*, align 8
  %4 = alloca %struct.frame_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %3, align 8
  store %struct.frame_buffer* %1, %struct.frame_buffer** %4, align 8
  %7 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %8 = load i32, i32* @ISI_CFG1, align 4
  %9 = call i32 @isi_readl(%struct.atmel_isi* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %11 = load i32, i32* @ISI_INTEN, align 4
  %12 = load i32, i32* @ISI_SR_CXFR_DONE, align 4
  %13 = load i32, i32* @ISI_SR_PXFR_DONE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @isi_writel(%struct.atmel_isi* %10, i32 %11, i32 %14)
  %16 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %2
  %21 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %22 = load i32, i32* @ISI_STATUS, align 4
  %23 = call i32 @isi_readl(%struct.atmel_isi* %21, i32 %22)
  %24 = load i32, i32* @ISI_CTRL_CDC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %103

32:                                               ; preds = %20
  %33 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %34 = load i32, i32* @ISI_DMA_C_DSCR, align 4
  %35 = load %struct.frame_buffer*, %struct.frame_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.frame_buffer, %struct.frame_buffer* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @isi_writel(%struct.atmel_isi* %33, i32 %34, i32 %40)
  %42 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %43 = load i32, i32* @ISI_DMA_C_CTRL, align 4
  %44 = load i32, i32* @ISI_DMA_CTRL_FETCH, align 4
  %45 = load i32, i32* @ISI_DMA_CTRL_DONE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @isi_writel(%struct.atmel_isi* %42, i32 %43, i32 %46)
  %48 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %49 = load i32, i32* @ISI_DMA_CHER, align 4
  %50 = load i32, i32* @ISI_DMA_CHSR_C_CH, align 4
  %51 = call i32 @isi_writel(%struct.atmel_isi* %48, i32 %49, i32 %50)
  br label %72

52:                                               ; preds = %2
  %53 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %54 = load i32, i32* @ISI_DMA_P_DSCR, align 4
  %55 = load %struct.frame_buffer*, %struct.frame_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.frame_buffer, %struct.frame_buffer* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @isi_writel(%struct.atmel_isi* %53, i32 %54, i32 %60)
  %62 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %63 = load i32, i32* @ISI_DMA_P_CTRL, align 4
  %64 = load i32, i32* @ISI_DMA_CTRL_FETCH, align 4
  %65 = load i32, i32* @ISI_DMA_CTRL_DONE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @isi_writel(%struct.atmel_isi* %62, i32 %63, i32 %66)
  %68 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %69 = load i32, i32* @ISI_DMA_CHER, align 4
  %70 = load i32, i32* @ISI_DMA_CHSR_P_CH, align 4
  %71 = call i32 @isi_writel(%struct.atmel_isi* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %52, %32
  %73 = load i32, i32* @ISI_CFG1_FRATE_DIV_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %78 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ISI_CFG1_DISCR, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @ISI_CTRL_EN, align 4
  store i32 %85, i32* %5, align 4
  %86 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %87 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %72
  %91 = load i32, i32* @ISI_CTRL_CDC, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %72
  %95 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %96 = load i32, i32* @ISI_CTRL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @isi_writel(%struct.atmel_isi* %95, i32 %96, i32 %97)
  %99 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %100 = load i32, i32* @ISI_CFG1, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @isi_writel(%struct.atmel_isi* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %27
  ret void
}

declare dso_local i32 @isi_readl(%struct.atmel_isi*, i32) #1

declare dso_local i32 @isi_writel(%struct.atmel_isi*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
