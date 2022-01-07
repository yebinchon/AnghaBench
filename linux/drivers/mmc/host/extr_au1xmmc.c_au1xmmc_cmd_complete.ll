; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, i32, i64, %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32*, i32 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SD_RESP3 = common dso_local global i64 0, align 8
@SD_RESP2 = common dso_local global i64 0, align 8
@SD_RESP1 = common dso_local global i64 0, align 8
@SD_RESP0 = common dso_local global i64 0, align 8
@SD_STATUS_SC = common dso_local global i32 0, align 4
@SD_STATUS_WC = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@HOST_F_XMIT = common dso_local global i32 0, align 4
@HOST_F_RECV = common dso_local global i32 0, align 4
@SD_CONFIG_TH = common dso_local global i32 0, align 4
@SD_CONFIG_RA = common dso_local global i32 0, align 4
@SD_CONFIG_RF = common dso_local global i32 0, align 4
@HOST_S_DATA = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@HOST_F_DBDMA = common dso_local global i32 0, align 4
@SD_STATUS_DB = common dso_local global i32 0, align 4
@SD_STATUS_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_cmd_complete(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %12, i32 0, i32 4
  %14 = load %struct.mmc_request*, %struct.mmc_request** %13, align 8
  store %struct.mmc_request* %14, %struct.mmc_request** %5, align 8
  %15 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %15, i32 0, i32 4
  %17 = load %struct.mmc_request*, %struct.mmc_request** %16, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %204

20:                                               ; preds = %2
  %21 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.mmc_command*, %struct.mmc_command** %22, align 8
  store %struct.mmc_command* %23, %struct.mmc_command** %6, align 8
  %24 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %20
  %33 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MMC_RSP_136, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %111

39:                                               ; preds = %32
  %40 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SD_RESP3, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i8* @__raw_readl(i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SD_RESP2, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i8* @__raw_readl(i64 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SD_RESP1, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i8* @__raw_readl(i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %62, i32* %63, align 8
  %64 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SD_RESP0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i8* @__raw_readl(i64 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %107, %39
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 16777215
  %81 = shl i32 %80, 8
  %82 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 3
  br i1 %89, label %90, label %106

90:                                               ; preds = %75
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -16777216
  %97 = lshr i32 %96, 24
  %98 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %97
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %90, %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %72

110:                                              ; preds = %72
  br label %123

111:                                              ; preds = %32
  %112 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %113 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SD_RESP0, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i8* @__raw_readl(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %111, %110
  br label %124

124:                                              ; preds = %123, %20
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @SD_STATUS_SC, align 4
  %127 = load i32, i32* @SD_STATUS_WC, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SD_STATUS_RC, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %125, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = load i32, i32* @EILSEQ, align 4
  %135 = sub nsw i32 0, %134
  %136 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %137 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %124
  %139 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %140 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @HOST_F_XMIT, align 4
  %143 = load i32, i32* @HOST_F_RECV, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %150 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %148, %138
  %154 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %155 = load i32, i32* @SD_CONFIG_TH, align 4
  %156 = load i32, i32* @SD_CONFIG_RA, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @SD_CONFIG_RF, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %154, i32 %159)
  %161 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %162 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %161, i32 0, i32 2
  %163 = call i32 @tasklet_schedule(i32* %162)
  br label %204

164:                                              ; preds = %148
  %165 = load i32, i32* @HOST_S_DATA, align 4
  %166 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %167 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %169 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @HOST_F_DMA, align 4
  %172 = load i32, i32* @HOST_F_DBDMA, align 4
  %173 = or i32 %171, %172
  %174 = and i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %204

176:                                              ; preds = %164
  %177 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %178 = call i32 @DMA_CHANNEL(%struct.au1xmmc_host* %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %180 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @HOST_F_RECV, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %176
  %186 = load i32, i32* @SD_STATUS_DB, align 4
  %187 = load i32, i32* @SD_STATUS_NE, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %195, %185
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %197 = call i64 @HOST_STATUS(%struct.au1xmmc_host* %196)
  %198 = call i8* @__raw_readl(i64 %197)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %4, align 4
  br label %189

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %176
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @au1xxx_dbdma_start(i32 %202)
  br label %204

204:                                              ; preds = %19, %153, %201, %164
  ret void
}

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @DMA_CHANNEL(%struct.au1xmmc_host*) #1

declare dso_local i64 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @au1xxx_dbdma_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
