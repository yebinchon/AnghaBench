; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.mmc_request* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@HOST_S_DATA = common dso_local global i64 0, align 8
@HOST_S_STOP = common dso_local global i64 0, align 8
@HOST_F_XMIT = common dso_local global i32 0, align 4
@SD_STATUS_DB = common dso_local global i32 0, align 4
@SD_STATUS_WC = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@HOST_F_DBDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_data_complete(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 5
  %13 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  store %struct.mmc_request* %13, %struct.mmc_request** %5, align 8
  %14 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HOST_S_DATA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HOST_S_STOP, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i1 [ false, %2 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %29, i32 0, i32 5
  %31 = load %struct.mmc_request*, %struct.mmc_request** %30, align 8
  %32 = icmp eq %struct.mmc_request* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %167

34:                                               ; preds = %25
  %35 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.mmc_data*, %struct.mmc_data** %38, align 8
  store %struct.mmc_data* %39, %struct.mmc_data** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %44 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %43)
  %45 = call i32 @__raw_readl(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %34
  br label %47

47:                                               ; preds = %61, %46
  %48 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HOST_F_XMIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SD_STATUS_DB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %54, %47
  %60 = phi i1 [ false, %47 ], [ %58, %54 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %63 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %62)
  %64 = call i32 @__raw_readl(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %47

65:                                               ; preds = %59
  %66 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  %68 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mmc_dev(i32 %70)
  %72 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %79 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_unmap_sg(i32 %71, i32 %74, i32 %77, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SD_STATUS_WC, align 4
  %85 = load i32, i32* @SD_STATUS_RC, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  store i32 %87, i32* %7, align 4
  %88 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %89 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @HOST_F_XMIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %65
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 7
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %65
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* @EILSEQ, align 4
  %107 = sub nsw i32 0, %106
  %108 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %109 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %102
  %111 = load i32, i32* @SD_STATUS_WC, align 4
  %112 = load i32, i32* @SD_STATUS_RC, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %115 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %114)
  %116 = call i32 @__raw_writel(i32 %113, i32 %115)
  %117 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %120 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %110
  %124 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %125 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @HOST_F_DMA, align 4
  %128 = load i32, i32* @HOST_F_DBDMA, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %123
  %133 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %134 = call i32 @DMA_CHANNEL(%struct.au1xmmc_host* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to %struct.TYPE_9__**
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %9, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %10, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %146 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  br label %163

147:                                              ; preds = %123
  %148 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %149 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %152 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  %155 = sext i32 %154 to i64
  %156 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %157 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %155, %159
  %161 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %162 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %147, %132
  br label %164

164:                                              ; preds = %163, %110
  %165 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %166 = call i32 @au1xmmc_finish_request(%struct.au1xmmc_host* %165)
  br label %167

167:                                              ; preds = %164, %33
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @DMA_CHANNEL(%struct.au1xmmc_host*) #1

declare dso_local i32 @au1xmmc_finish_request(%struct.au1xmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
