; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_flite_source_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_create_flite_source_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.TYPE_12__*, %struct.fimc_lite** }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }
%struct.fimc_lite = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.media_entity }
%struct.TYPE_7__ = type { %struct.media_entity }

@FIMC_LITE_MAX_DEVS = common dso_local global i32 0, align 4
@FLITE_SD_PAD_SOURCE_DMA = common dso_local global i32 0, align 4
@FLITE_SD_PAD_SOURCE_ISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*)* @__fimc_md_create_flite_source_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_md_create_flite_source_links(%struct.fimc_md* %0) #0 {
  %2 = alloca %struct.fimc_md*, align 8
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fimc_lite*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FIMC_LITE_MAX_DEVS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %14 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %13, i32 0, i32 1
  %15 = load %struct.fimc_lite**, %struct.fimc_lite*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fimc_lite*, %struct.fimc_lite** %15, i64 %17
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %18, align 8
  store %struct.fimc_lite* %19, %struct.fimc_lite** %7, align 8
  %20 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %21 = icmp eq %struct.fimc_lite* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %53

23:                                               ; preds = %12
  %24 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %25 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.media_entity* %26, %struct.media_entity** %3, align 8
  %27 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %28 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.media_entity* %30, %struct.media_entity** %4, align 8
  %31 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %32 = load i32, i32* @FLITE_SD_PAD_SOURCE_DMA, align 4
  %33 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %34 = call i32 @media_create_pad_link(%struct.media_entity* %31, i32 %32, %struct.media_entity* %33, i32 0, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %56

38:                                               ; preds = %23
  %39 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %40 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store %struct.media_entity* %44, %struct.media_entity** %4, align 8
  %45 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %46 = load i32, i32* @FLITE_SD_PAD_SOURCE_ISP, align 4
  %47 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %48 = call i32 @media_create_pad_link(%struct.media_entity* %45, i32 %46, %struct.media_entity* %47, i32 0, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %56

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %8

56:                                               ; preds = %51, %37, %8
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @media_create_pad_link(%struct.media_entity*, i32, %struct.media_entity*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
