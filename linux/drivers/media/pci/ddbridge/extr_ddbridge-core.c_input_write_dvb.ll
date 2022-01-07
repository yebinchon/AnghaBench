; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_input_write_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_input_write_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_4__*, %struct.ddb_dma*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ddb_dma* }
%struct.ddb_dma = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_3__ = type { %struct.ddb*, %struct.ddb_dvb* }
%struct.ddb = type { i32 }
%struct.ddb_dvb = type { i32 }

@alt_dma = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_input*, %struct.ddb_input*)* @input_write_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_write_dvb(%struct.ddb_input* %0, %struct.ddb_input* %1) #0 {
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  %6 = alloca %struct.ddb_dma*, align 8
  %7 = alloca %struct.ddb_dma*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  store %struct.ddb_input* %1, %struct.ddb_input** %4, align 8
  %10 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %11 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.ddb_dvb*, %struct.ddb_dvb** %13, align 8
  %15 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %16 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %14, i64 %19
  store %struct.ddb_dvb* %20, %struct.ddb_dvb** %5, align 8
  %21 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %22 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ddb*, %struct.ddb** %24, align 8
  store %struct.ddb* %25, %struct.ddb** %8, align 8
  store i32 1, i32* %9, align 4
  %26 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %27 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %26, i32 0, i32 2
  %28 = load %struct.ddb_dma*, %struct.ddb_dma** %27, align 8
  store %struct.ddb_dma* %28, %struct.ddb_dma** %6, align 8
  %29 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %30 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %29, i32 0, i32 2
  %31 = load %struct.ddb_dma*, %struct.ddb_dma** %30, align 8
  store %struct.ddb_dma* %31, %struct.ddb_dma** %7, align 8
  %32 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %33 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %38 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.ddb_dma*, %struct.ddb_dma** %40, align 8
  store %struct.ddb_dma* %41, %struct.ddb_dma** %7, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %2
  br label %43

43:                                               ; preds = %127, %42
  %44 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %45 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %48 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 11
  %51 = and i32 %50, 31
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %43
  %54 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %55 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 4, %56
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %53, %43
  %60 = phi i1 [ true, %43 ], [ %58, %53 ]
  br i1 %60, label %61, label %142

61:                                               ; preds = %59
  %62 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %63 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 4, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i64, i64* @alt_dma, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load %struct.ddb*, %struct.ddb** %8, align 8
  %73 = getelementptr inbounds %struct.ddb, %struct.ddb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %76 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %79 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %85 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = call i32 @dma_sync_single_for_cpu(i32 %74, i32 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %71, %68
  %90 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %91 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %90, i32 0, i32 0
  %92 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %93 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %96 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %102 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 188
  %105 = call i32 @dvb_dmx_swfilter_packets(i32* %91, i32 %100, i32 %104)
  %106 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %107 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %111 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = srem i32 %109, %112
  %114 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %115 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %89
  %119 = load %struct.ddb*, %struct.ddb** %8, align 8
  %120 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %121 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 11
  %124 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %125 = call i32 @DMA_BUFFER_ACK(%struct.ddb_dma* %124)
  %126 = call i32 @ddbwritel(%struct.ddb* %119, i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %118, %89
  %128 = load %struct.ddb*, %struct.ddb** %8, align 8
  %129 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %130 = call i32 @DMA_BUFFER_CURRENT(%struct.ddb_dma* %129)
  %131 = call i8* @safe_ddbreadl(%struct.ddb* %128, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %134 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ddb*, %struct.ddb** %8, align 8
  %136 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %137 = call i32 @DMA_BUFFER_CONTROL(%struct.ddb_dma* %136)
  %138 = call i8* @safe_ddbreadl(%struct.ddb* %135, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %141 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %43

142:                                              ; preds = %59
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i32, i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_ACK(%struct.ddb_dma*) #1

declare dso_local i8* @safe_ddbreadl(%struct.ddb*, i32) #1

declare dso_local i32 @DMA_BUFFER_CURRENT(%struct.ddb_dma*) #1

declare dso_local i32 @DMA_BUFFER_CONTROL(%struct.ddb_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
