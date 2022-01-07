; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_receive_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_receive_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.mmc_data* }
%struct.mmc_data = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@HOST_F_RECV = common dso_local global i32 0, align 4
@AU1XMMC_MAX_TRANSFER = common dso_local global i32 0, align 4
@SD_STATUS_NE = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RX CRC Error [%d + %d].\0A\00", align 1
@SD_STATUS_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RX Overrun [%d + %d]\0A\00", align 1
@SD_STATUS_RU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"RX Underrun [%d + %d]\0A\00", align 1
@SD_CONFIG_NE = common dso_local global i32 0, align 4
@HOST_F_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_receive_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_receive_pio(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  store %struct.mmc_data* %15, %struct.mmc_data** %3, align 8
  %16 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HOST_F_RECV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %227

23:                                               ; preds = %1
  %24 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %23
  %38 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 %44
  store %struct.scatterlist* %45, %struct.scatterlist** %10, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %47 = call i32 @sg_page(%struct.scatterlist* %46)
  %48 = call i8* @kmap_atomic(i32 %47)
  %49 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %55 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8* %59, i8** %7, align 8
  %60 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 0
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  %63 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %64 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i64 %66
  %68 = call i32 @sg_dma_len(%struct.scatterlist* %67)
  %69 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %70 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %68, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %37
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %37
  br label %80

80:                                               ; preds = %79, %23
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %80
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %167, %86
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %170

91:                                               ; preds = %87
  %92 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %93 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %92)
  %94 = call i32 @__raw_readl(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SD_STATUS_NE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %170

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SD_STATUS_RC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %107 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %112 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %114, i32 %115)
  br label %170

117:                                              ; preds = %100
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @SD_STATUS_RO, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %124 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %129 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %131, i32 %132)
  br label %170

134:                                              ; preds = %117
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @SD_STATUS_RU, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %141 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %140, i32 0, i32 3
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %146 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %148, i32 %149)
  br label %170

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %154 = call i32 @HOST_RXPORT(%struct.au1xmmc_host* %153)
  %155 = call i32 @__raw_readl(i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %158, %152
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %87

170:                                              ; preds = %139, %122, %105, %99, %87
  %171 = load i8*, i8** %7, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @kunmap_atomic(i8* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %179 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %185 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %183
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %176
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %197 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %202 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %195, %191, %176
  %205 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %206 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %204
  %211 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %212 = load i32, i32* @SD_CONFIG_NE, align 4
  %213 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %211, i32 %212)
  %214 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %215 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @HOST_F_STOP, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %222 = call i32 @SEND_STOP(%struct.au1xmmc_host* %221)
  br label %223

223:                                              ; preds = %220, %210
  %224 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %225 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %224, i32 0, i32 1
  %226 = call i32 @tasklet_schedule(i32* %225)
  br label %227

227:                                              ; preds = %22, %223, %204
  ret void
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @HOST_RXPORT(%struct.au1xmmc_host*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @SEND_STOP(%struct.au1xmmc_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
