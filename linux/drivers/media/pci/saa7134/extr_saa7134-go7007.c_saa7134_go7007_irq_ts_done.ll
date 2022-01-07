; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_irq_ts_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_irq_ts_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.go7007 = type { i32, %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"saa7134-go7007: irq: lost %ld\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i64)* @saa7134_go7007_irq_ts_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_go7007_irq_ts_done(%struct.saa7134_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca %struct.saa7134_go7007*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.go7007* @video_get_drvdata(i32 %9)
  store %struct.go7007* %10, %struct.go7007** %5, align 8
  %11 = load %struct.go7007*, %struct.go7007** %5, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 1
  %13 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %12, align 8
  store %struct.saa7134_go7007* %13, %struct.saa7134_go7007** %6, align 8
  %14 = load %struct.go7007*, %struct.go7007** %5, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = call i32 @vb2_is_streaming(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %76

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, 983040
  %22 = icmp ne i64 0, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = lshr i64 %24, 16
  %26 = and i64 %25, 15
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i64, i64* %4, align 8
  %30 = and i64 %29, 1048576
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %34 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %38 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_sync_single_for_cpu(i32* %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.go7007*, %struct.go7007** %5, align 8
  %44 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %45 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @go7007_parse_video_stream(%struct.go7007* %43, i32 %46, i32 %47)
  %49 = call i32 @SAA7134_RS_BA2(i32 5)
  %50 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %51 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @saa_writel(i32 %49, i32 %52)
  br label %76

54:                                               ; preds = %28
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %56 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %60 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_sync_single_for_cpu(i32* %58, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.go7007*, %struct.go7007** %5, align 8
  %66 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %67 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i32 @go7007_parse_video_stream(%struct.go7007* %65, i32 %68, i32 %69)
  %71 = call i32 @SAA7134_RS_BA1(i32 5)
  %72 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %6, align 8
  %73 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @saa_writel(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %18, %54, %32
  ret void
}

declare dso_local %struct.go7007* @video_get_drvdata(i32) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @go7007_parse_video_stream(%struct.go7007*, i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
