; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_proc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_proc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@PT3_BUF_CANARY = common dso_local global i64 0, align 8
@PT3_ACCESS_UNIT = common dso_local global i32 0, align 4
@DATA_BUF_SZ = common dso_local global i32 0, align 4
@TS_PACKET_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt3_proc_dma(%struct.pt3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %3, align 8
  %7 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PT3_BUF_CANARY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %103, %28
  %30 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %31 = call i64* @next_unit(%struct.pt3_adapter* %30, i32* %4, i32* %5)
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PT3_BUF_CANARY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %112

35:                                               ; preds = %29
  %36 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  store i64* %50, i64** %6, align 8
  %51 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %103

60:                                               ; preds = %35
  %61 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PT3_ACCESS_UNIT, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @DATA_BUF_SZ, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %60
  %69 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %69, i32 0, i32 3
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* @DATA_BUF_SZ, align 4
  %73 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load i32, i32* @TS_PACKET_SZ, align 4
  %78 = sdiv i32 %76, %77
  %79 = call i32 @dvb_dmx_swfilter_packets(i32* %70, i64* %71, i32 %78)
  %80 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %80, i32 0, i32 3
  %82 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @TS_PACKET_SZ, align 4
  %92 = sdiv i32 %90, %91
  %93 = call i32 @dvb_dmx_swfilter_packets(i32* %81, i64* %89, i32 %92)
  br label %102

94:                                               ; preds = %60
  %95 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %95, i32 0, i32 3
  %97 = load i64*, i64** %6, align 8
  %98 = load i32, i32* @PT3_ACCESS_UNIT, align 4
  %99 = load i32, i32* @TS_PACKET_SZ, align 4
  %100 = sdiv i32 %98, %99
  %101 = call i32 @dvb_dmx_swfilter_packets(i32* %96, i64* %97, i32 %100)
  br label %102

102:                                              ; preds = %94, %68
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i64, i64* @PT3_BUF_CANARY, align 8
  %105 = load i64*, i64** %6, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %29

112:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %27
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64* @next_unit(%struct.pt3_adapter*, i32*, i32*) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
