; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_vpeirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_vpeirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, %struct.dvb_demux, %struct.dvb_demux, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dvb_demux = type { i32 }

@PCI_VDP3 = common dso_local global i32 0, align 4
@TS_BUFLEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EC1R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vpeirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpeirq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_demux*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.av7110*
  store %struct.av7110* %9, %struct.av7110** %3, align 8
  %10 = load %struct.av7110*, %struct.av7110** %3, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load %struct.av7110*, %struct.av7110** %3, align 8
  %15 = getelementptr inbounds %struct.av7110, %struct.av7110* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.av7110*, %struct.av7110** %3, align 8
  %18 = getelementptr inbounds %struct.av7110, %struct.av7110* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* @PCI_VDP3, align 4
  %21 = call i32 @saa7146_read(%struct.TYPE_4__* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.av7110*, %struct.av7110** %3, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.av7110*, %struct.av7110** %3, align 8
  %28 = getelementptr inbounds %struct.av7110, %struct.av7110* %27, i32 0, i32 5
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.av7110*, %struct.av7110** %3, align 8
  %31 = getelementptr inbounds %struct.av7110, %struct.av7110* %30, i32 0, i32 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi %struct.dvb_demux* [ %28, %26 ], [ %31, %29 ]
  store %struct.dvb_demux* %33, %struct.dvb_demux** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 188
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TS_BUFLEN, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %101

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.av7110*, %struct.av7110** %3, align 8
  %45 = getelementptr inbounds %struct.av7110, %struct.av7110* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.av7110*, %struct.av7110** %3, align 8
  %47 = getelementptr inbounds %struct.av7110, %struct.av7110* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %42
  br label %101

55:                                               ; preds = %50
  %56 = load %struct.av7110*, %struct.av7110** %3, align 8
  %57 = getelementptr inbounds %struct.av7110, %struct.av7110* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.av7110*, %struct.av7110** %3, align 8
  %62 = getelementptr inbounds %struct.av7110, %struct.av7110* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.av7110*, %struct.av7110** %3, align 8
  %66 = getelementptr inbounds %struct.av7110, %struct.av7110* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %70 = call i32 @pci_dma_sync_sg_for_cpu(i32 %60, i32 %64, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %55
  %75 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sdiv i32 %82, 188
  %84 = call i32 @dvb_dmx_swfilter_packets(%struct.dvb_demux* %75, i32* %79, i32 %83)
  br label %101

85:                                               ; preds = %55
  %86 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* @TS_BUFLEN, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sdiv i32 %93, 188
  %95 = call i32 @dvb_dmx_swfilter_packets(%struct.dvb_demux* %86, i32* %90, i32 %94)
  %96 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sdiv i32 %98, 188
  %100 = call i32 @dvb_dmx_swfilter_packets(%struct.dvb_demux* %96, i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %41, %54, %85, %74
  ret void
}

declare dso_local i32 @saa7146_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_dma_sync_sg_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(%struct.dvb_demux*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
