; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_io = type { i32, %struct.TYPE_11__*, %struct.ddb_dma* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.ddb_dma*, %struct.ddb_dma* }
%struct.ddb_dma = type { i32, i32, i64, i64, i8*, i32, i32, i32, %struct.ddb_io* }
%struct.ddb_regmap = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@output_work = common dso_local global i32 0, align 4
@dma_buf_num = common dso_local global i8* null, align 8
@dma_buf_size = common dso_local global i32 0, align 4
@input_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"init link %u, io %u, dma %u, dmaregs %08x bufregs %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_io*, i32, i32)* @ddb_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_dma_init(%struct.ddb_io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ddb_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ddb_dma*, align 8
  %8 = alloca %struct.ddb_regmap*, align 8
  store %struct.ddb_io* %0, %struct.ddb_io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %10 = call %struct.ddb_regmap* @io_regmap(%struct.ddb_io* %9, i32 0)
  store %struct.ddb_regmap* %10, %struct.ddb_regmap** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %15 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.ddb_dma*, %struct.ddb_dma** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %20, i64 %22
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %26 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.ddb_dma*, %struct.ddb_dma** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %31, i64 %33
  br label %35

35:                                               ; preds = %24, %13
  %36 = phi %struct.ddb_dma* [ %23, %13 ], [ %34, %24 ]
  store %struct.ddb_dma* %36, %struct.ddb_dma** %7, align 8
  %37 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %38 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %39 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %38, i32 0, i32 2
  store %struct.ddb_dma* %37, %struct.ddb_dma** %39, align 8
  %40 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %41 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %42 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %41, i32 0, i32 8
  store %struct.ddb_io* %40, %struct.ddb_io** %42, align 8
  %43 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %44 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %43, i32 0, i32 7
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %47 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %46, i32 0, i32 6
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %35
  %52 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %53 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %52, i32 0, i32 5
  %54 = load i32, i32* @output_work, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %57 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %62 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %60, %68
  %70 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %71 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %73 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %78 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %76, %84
  %86 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %87 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** @dma_buf_num, align 8
  %89 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %90 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @dma_buf_size, align 4
  %92 = mul nsw i32 %91, 128
  %93 = mul nsw i32 %92, 47
  %94 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %95 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %97 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %145

98:                                               ; preds = %35
  %99 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %100 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %99, i32 0, i32 5
  %101 = load i32, i32* @input_work, align 4
  %102 = call i32 @INIT_WORK(i32* %100, i32 %101)
  %103 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %104 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %109 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %107, %115
  %117 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %118 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %120 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %125 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %123, %131
  %133 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %134 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i8*, i8** @dma_buf_num, align 8
  %136 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %137 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @dma_buf_size, align 4
  %139 = mul nsw i32 %138, 128
  %140 = mul nsw i32 %139, 47
  %141 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %142 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %144 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %98, %51
  %146 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %147 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %152 = call i32 @DMA_BUFFER_ACK(%struct.ddb_dma* %151)
  %153 = call i32 @ddbwritel(%struct.TYPE_12__* %150, i32 0, i32 %152)
  %154 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %155 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %154, i32 0, i32 1
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %162 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %161, i32 0, i32 1
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %167 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %171 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ddb_dma*, %struct.ddb_dma** %7, align 8
  %174 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @dev_dbg(i32 %160, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %168, i32 %169, i64 %172, i64 %175)
  ret void
}

declare dso_local %struct.ddb_regmap* @io_regmap(%struct.ddb_io*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ddbwritel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_ACK(%struct.ddb_dma*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
