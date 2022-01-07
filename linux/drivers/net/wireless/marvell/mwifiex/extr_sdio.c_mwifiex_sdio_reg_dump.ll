; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SDIO register dump start\0A\00", align 1
@MWIFIEX_SDIO_SCRATCH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SDIO Func%d (%#x-%#x): \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SDIO Func%d: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(%#x) \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"SDIO register dump end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i8*)* @mwifiex_sdio_reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_reg_dump(%struct.mwifiex_adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sdio_mmc_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca i8*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %21, align 8
  store %struct.sdio_mmc_card* %22, %struct.sdio_mmc_card** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %214

26:                                               ; preds = %2
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %28 = load i32, i32* @MSG, align 4
  %29 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %31 = call i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %30)
  %32 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %33 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sdio_claim_host(i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %197, %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %200

39:                                               ; preds = %36
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 256)
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  store i8* %42, i8** %18, align 8
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %84 [
    i32 0, label %44
    i32 1, label %46
    i32 2, label %58
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 9, i32* %16, align 4
  br label %98

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %49 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  %53 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %54 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  br label %98

58:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %59 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %60 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %15, align 4
  %69 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %70 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %13, align 4
  %74 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %75 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  br label %98

84:                                               ; preds = %39
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @mdelay(i32 100)
  br label %89

89:                                               ; preds = %87, %84
  store i32 1, i32* %10, align 4
  %90 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %91 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @MWIFIEX_SDIO_SCRATCH_SIZE, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %89, %58, %46, %44
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 2
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i8*, i8** %18, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i8*, i8** %18, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %18, align 8
  br label %117

110:                                              ; preds = %98
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i8*, i8** %18, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %18, align 8
  br label %117

117:                                              ; preds = %110, %101
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %185, %117
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %186

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %128 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @sdio_f0_readb(i32 %129, i32 %130, i32* %8)
  store i32 %131, i32* %11, align 4
  br label %138

132:                                              ; preds = %123
  %133 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %134 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @sdio_readb(i32 %135, i32 %136, i32* %8)
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i8*, i8** %18, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %18, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %18, align 8
  br label %148

148:                                              ; preds = %141, %138
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = load i8*, i8** %18, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = load i8*, i8** %18, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %18, align 8
  br label %164

158:                                              ; preds = %148
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 (i8*, i8*, ...) @sprintf(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i8*, i8** %18, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %18, align 8
  br label %186

164:                                              ; preds = %151
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %173 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %14, align 4
  br label %185

182:                                              ; preds = %167, %164
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %182, %171
  br label %119

186:                                              ; preds = %158, %119
  %187 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %188 = load i32, i32* @MSG, align 4
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %190 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %187, i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %189)
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %193 = call i32 (i8*, i8*, ...) @sprintf(i8* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %192)
  %194 = load i8*, i8** %6, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %6, align 8
  br label %197

197:                                              ; preds = %186
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %36

200:                                              ; preds = %36
  %201 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  %202 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @sdio_release_host(i32 %203)
  %205 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %206 = load i32, i32* @MSG, align 4
  %207 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %205, i32 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %208 = load i8*, i8** %6, align 8
  %209 = load i8*, i8** %5, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %200, %25
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sdio_f0_readb(i32, i32, i32*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
