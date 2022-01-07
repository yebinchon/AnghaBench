; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@HOST_F_RECV = common dso_local global i32 0, align 4
@HOST_F_XMIT = common dso_local global i32 0, align 4
@HOST_F_STOP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@HOST_F_DBDMA = common dso_local global i32 0, align 4
@DDMA_FLAGS_NOIE = common dso_local global i64 0, align 8
@DDMA_FLAGS_IE = common dso_local global i64 0, align 8
@SD_CONFIG_TH = common dso_local global i32 0, align 4
@SD_CONFIG_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xmmc_host*, %struct.mmc_data*)* @au1xmmc_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_prepare_data(%struct.au1xmmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1xmmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MMC_DATA_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @HOST_F_RECV, align 4
  %29 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @HOST_F_XMIT, align 4
  %35 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %36 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %41 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @HOST_F_STOP, align 4
  %48 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %49 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %55 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %58 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mmc_dev(i32 %59)
  %61 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %61, i32 0, i32 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  %64 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %68 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dma_map_sg(i32 %60, %struct.scatterlist* %63, i32 %66, i32 %70)
  %72 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %76 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %52
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %218

83:                                               ; preds = %52
  %84 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %85 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %89 = call i32 @HOST_BLKSIZE(%struct.au1xmmc_host* %88)
  %90 = call i32 @__raw_writel(i32 %87, i32 %89)
  %91 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %92 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HOST_F_DMA, align 4
  %95 = load i32, i32* @HOST_F_DBDMA, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %173

99:                                               ; preds = %83
  %100 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %101 = call i64 @DMA_CHANNEL(%struct.au1xmmc_host* %100)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @au1xxx_dbdma_stop(i64 %102)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %169, %99
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %107 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %172

111:                                              ; preds = %104
  store i64 0, i64* %9, align 8
  %112 = load i64, i64* @DDMA_FLAGS_NOIE, align 8
  store i64 %112, i64* %10, align 8
  %113 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %114 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %113, i32 0, i32 4
  %115 = load %struct.scatterlist*, %struct.scatterlist** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %115, i64 %117
  store %struct.scatterlist* %118, %struct.scatterlist** %11, align 8
  %119 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = load i32, i32* %12, align 4
  br label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %133 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i64, i64* @DDMA_FLAGS_IE, align 8
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %138, %129
  %141 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %142 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HOST_F_XMIT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %150 = call i32 @sg_phys(%struct.scatterlist* %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i64, i64* %10, align 8
  %153 = call i64 @au1xxx_dbdma_put_source(i64 %148, i32 %150, i32 %151, i64 %152)
  store i64 %153, i64* %9, align 8
  br label %161

154:                                              ; preds = %140
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %157 = call i32 @sg_phys(%struct.scatterlist* %156)
  %158 = load i32, i32* %13, align 4
  %159 = load i64, i64* %10, align 8
  %160 = call i64 @au1xxx_dbdma_put_dest(i64 %155, i32 %157, i32 %158, i64 %159)
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %154, %147
  %162 = load i64, i64* %9, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %200

165:                                              ; preds = %161
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %104

172:                                              ; preds = %104
  br label %199

173:                                              ; preds = %83
  %174 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %175 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %178 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %182 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %185 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @HOST_F_XMIT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %173
  %191 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %192 = load i32, i32* @SD_CONFIG_TH, align 4
  %193 = call i32 @IRQ_ON(%struct.au1xmmc_host* %191, i32 %192)
  br label %198

194:                                              ; preds = %173
  %195 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %196 = load i32, i32* @SD_CONFIG_NE, align 4
  %197 = call i32 @IRQ_ON(%struct.au1xmmc_host* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %198, %172
  store i32 0, i32* %3, align 4
  br label %218

200:                                              ; preds = %164
  %201 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %202 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @mmc_dev(i32 %203)
  %205 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %206 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %205, i32 0, i32 4
  %207 = load %struct.scatterlist*, %struct.scatterlist** %206, align 8
  %208 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %209 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %212 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dma_unmap_sg(i32 %204, %struct.scatterlist* %207, i32 %210, i32 %214)
  %216 = load i32, i32* @ETIMEDOUT, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %200, %199, %80
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @HOST_BLKSIZE(%struct.au1xmmc_host*) #1

declare dso_local i64 @DMA_CHANNEL(%struct.au1xmmc_host*) #1

declare dso_local i32 @au1xxx_dbdma_stop(i64) #1

declare dso_local i64 @au1xxx_dbdma_put_source(i64, i32, i32, i64) #1

declare dso_local i32 @sg_phys(%struct.scatterlist*) #1

declare dso_local i64 @au1xxx_dbdma_put_dest(i64, i32, i32, i64) #1

declare dso_local i32 @IRQ_ON(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
