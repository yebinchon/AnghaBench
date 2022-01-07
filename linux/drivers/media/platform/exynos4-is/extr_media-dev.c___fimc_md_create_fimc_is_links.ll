; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_fimc_is_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_fimc_is_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.TYPE_13__**, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.media_entity }
%struct.media_entity = type { i64 }
%struct.TYPE_9__ = type { %struct.fimc_isp }
%struct.fimc_isp = type { %struct.TYPE_16__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.media_entity }
%struct.TYPE_10__ = type { %struct.media_entity }

@FIMC_MAX_DEVS = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SRC_FIFO = common dso_local global i32 0, align 4
@FIMC_SD_PAD_SINK_FIFO = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SRC_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*)* @__fimc_md_create_fimc_is_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_md_create_fimc_is_links(%struct.fimc_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_md*, align 8
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %3, align 8
  %9 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.fimc_isp* %12, %struct.fimc_isp** %4, align 8
  %13 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.media_entity* %15, %struct.media_entity** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FIMC_MAX_DEVS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %22 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %23, i64 %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = icmp eq %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %51

30:                                               ; preds = %20
  %31 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %33, i64 %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store %struct.media_entity* %40, %struct.media_entity** %6, align 8
  %41 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %42 = load i32, i32* @FIMC_ISP_SD_PAD_SRC_FIFO, align 4
  %43 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %44 = load i32, i32* @FIMC_SD_PAD_SINK_FIFO, align 4
  %45 = call i32 @media_create_pad_link(%struct.media_entity* %41, i32 %42, %struct.media_entity* %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %56 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store %struct.media_entity* %59, %struct.media_entity** %6, align 8
  %60 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %61 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %67 = load i32, i32* @FIMC_ISP_SD_PAD_SRC_DMA, align 4
  %68 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %69 = call i32 @media_create_pad_link(%struct.media_entity* %66, i32 %67, %struct.media_entity* %68, i32 0, i32 0)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %64, %48
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @media_create_pad_link(%struct.media_entity*, i32, %struct.media_entity*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
