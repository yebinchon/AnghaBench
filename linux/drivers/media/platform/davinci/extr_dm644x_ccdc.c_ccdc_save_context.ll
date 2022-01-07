; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCDC_PCR = common dso_local global i32 0, align 4
@ccdc_ctx = common dso_local global i32* null, align 8
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@CCDC_HD_VD_WID = common dso_local global i32 0, align 4
@CCDC_PIX_LINES = common dso_local global i32 0, align 4
@CCDC_HORZ_INFO = common dso_local global i32 0, align 4
@CCDC_VERT_START = common dso_local global i32 0, align 4
@CCDC_VERT_LINES = common dso_local global i32 0, align 4
@CCDC_CULLING = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@CCDC_SDOFST = common dso_local global i32 0, align 4
@CCDC_SDR_ADDR = common dso_local global i32 0, align 4
@CCDC_CLAMP = common dso_local global i32 0, align 4
@CCDC_DCSUB = common dso_local global i32 0, align 4
@CCDC_COLPTN = common dso_local global i32 0, align 4
@CCDC_BLKCMP = common dso_local global i32 0, align 4
@CCDC_FPC = common dso_local global i32 0, align 4
@CCDC_FPC_ADDR = common dso_local global i32 0, align 4
@CCDC_VDINT = common dso_local global i32 0, align 4
@CCDC_ALAW = common dso_local global i32 0, align 4
@CCDC_REC656IF = common dso_local global i32 0, align 4
@CCDC_CCDCFG = common dso_local global i32 0, align 4
@CCDC_FMTCFG = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ = common dso_local global i32 0, align 4
@CCDC_FMT_VERT = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR0 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR1 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR2 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR3 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR4 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR5 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR6 = common dso_local global i32 0, align 4
@CCDC_FMT_ADDR7 = common dso_local global i32 0, align 4
@CCDC_PRGEVEN_0 = common dso_local global i32 0, align 4
@CCDC_PRGEVEN_1 = common dso_local global i32 0, align 4
@CCDC_PRGODD_0 = common dso_local global i32 0, align 4
@CCDC_PRGODD_1 = common dso_local global i32 0, align 4
@CCDC_VP_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccdc_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_save_context() #0 {
  %1 = load i32, i32* @CCDC_PCR, align 4
  %2 = call i32 @regr(i32 %1)
  %3 = load i32*, i32** @ccdc_ctx, align 8
  %4 = load i32, i32* @CCDC_PCR, align 4
  %5 = ashr i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %3, i64 %6
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @CCDC_SYN_MODE, align 4
  %9 = call i32 @regr(i32 %8)
  %10 = load i32*, i32** @ccdc_ctx, align 8
  %11 = load i32, i32* @CCDC_SYN_MODE, align 4
  %12 = ashr i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @CCDC_HD_VD_WID, align 4
  %16 = call i32 @regr(i32 %15)
  %17 = load i32*, i32** @ccdc_ctx, align 8
  %18 = load i32, i32* @CCDC_HD_VD_WID, align 4
  %19 = ashr i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @CCDC_PIX_LINES, align 4
  %23 = call i32 @regr(i32 %22)
  %24 = load i32*, i32** @ccdc_ctx, align 8
  %25 = load i32, i32* @CCDC_PIX_LINES, align 4
  %26 = ashr i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* @CCDC_HORZ_INFO, align 4
  %30 = call i32 @regr(i32 %29)
  %31 = load i32*, i32** @ccdc_ctx, align 8
  %32 = load i32, i32* @CCDC_HORZ_INFO, align 4
  %33 = ashr i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* @CCDC_VERT_START, align 4
  %37 = call i32 @regr(i32 %36)
  %38 = load i32*, i32** @ccdc_ctx, align 8
  %39 = load i32, i32* @CCDC_VERT_START, align 4
  %40 = ashr i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* @CCDC_VERT_LINES, align 4
  %44 = call i32 @regr(i32 %43)
  %45 = load i32*, i32** @ccdc_ctx, align 8
  %46 = load i32, i32* @CCDC_VERT_LINES, align 4
  %47 = ashr i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @CCDC_CULLING, align 4
  %51 = call i32 @regr(i32 %50)
  %52 = load i32*, i32** @ccdc_ctx, align 8
  %53 = load i32, i32* @CCDC_CULLING, align 4
  %54 = ashr i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %58 = call i32 @regr(i32 %57)
  %59 = load i32*, i32** @ccdc_ctx, align 8
  %60 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %61 = ashr i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @CCDC_SDOFST, align 4
  %65 = call i32 @regr(i32 %64)
  %66 = load i32*, i32** @ccdc_ctx, align 8
  %67 = load i32, i32* @CCDC_SDOFST, align 4
  %68 = ashr i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* @CCDC_SDR_ADDR, align 4
  %72 = call i32 @regr(i32 %71)
  %73 = load i32*, i32** @ccdc_ctx, align 8
  %74 = load i32, i32* @CCDC_SDR_ADDR, align 4
  %75 = ashr i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @CCDC_CLAMP, align 4
  %79 = call i32 @regr(i32 %78)
  %80 = load i32*, i32** @ccdc_ctx, align 8
  %81 = load i32, i32* @CCDC_CLAMP, align 4
  %82 = ashr i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* @CCDC_DCSUB, align 4
  %86 = call i32 @regr(i32 %85)
  %87 = load i32*, i32** @ccdc_ctx, align 8
  %88 = load i32, i32* @CCDC_DCSUB, align 4
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* @CCDC_COLPTN, align 4
  %93 = call i32 @regr(i32 %92)
  %94 = load i32*, i32** @ccdc_ctx, align 8
  %95 = load i32, i32* @CCDC_COLPTN, align 4
  %96 = ashr i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* @CCDC_BLKCMP, align 4
  %100 = call i32 @regr(i32 %99)
  %101 = load i32*, i32** @ccdc_ctx, align 8
  %102 = load i32, i32* @CCDC_BLKCMP, align 4
  %103 = ashr i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* @CCDC_FPC, align 4
  %107 = call i32 @regr(i32 %106)
  %108 = load i32*, i32** @ccdc_ctx, align 8
  %109 = load i32, i32* @CCDC_FPC, align 4
  %110 = ashr i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load i32, i32* @CCDC_FPC_ADDR, align 4
  %114 = call i32 @regr(i32 %113)
  %115 = load i32*, i32** @ccdc_ctx, align 8
  %116 = load i32, i32* @CCDC_FPC_ADDR, align 4
  %117 = ashr i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* @CCDC_VDINT, align 4
  %121 = call i32 @regr(i32 %120)
  %122 = load i32*, i32** @ccdc_ctx, align 8
  %123 = load i32, i32* @CCDC_VDINT, align 4
  %124 = ashr i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* @CCDC_ALAW, align 4
  %128 = call i32 @regr(i32 %127)
  %129 = load i32*, i32** @ccdc_ctx, align 8
  %130 = load i32, i32* @CCDC_ALAW, align 4
  %131 = ashr i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load i32, i32* @CCDC_REC656IF, align 4
  %135 = call i32 @regr(i32 %134)
  %136 = load i32*, i32** @ccdc_ctx, align 8
  %137 = load i32, i32* @CCDC_REC656IF, align 4
  %138 = ashr i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* @CCDC_CCDCFG, align 4
  %142 = call i32 @regr(i32 %141)
  %143 = load i32*, i32** @ccdc_ctx, align 8
  %144 = load i32, i32* @CCDC_CCDCFG, align 4
  %145 = ashr i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* @CCDC_FMTCFG, align 4
  %149 = call i32 @regr(i32 %148)
  %150 = load i32*, i32** @ccdc_ctx, align 8
  %151 = load i32, i32* @CCDC_FMTCFG, align 4
  %152 = ashr i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* @CCDC_FMT_HORZ, align 4
  %156 = call i32 @regr(i32 %155)
  %157 = load i32*, i32** @ccdc_ctx, align 8
  %158 = load i32, i32* @CCDC_FMT_HORZ, align 4
  %159 = ashr i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* @CCDC_FMT_VERT, align 4
  %163 = call i32 @regr(i32 %162)
  %164 = load i32*, i32** @ccdc_ctx, align 8
  %165 = load i32, i32* @CCDC_FMT_VERT, align 4
  %166 = ashr i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %163, i32* %168, align 4
  %169 = load i32, i32* @CCDC_FMT_ADDR0, align 4
  %170 = call i32 @regr(i32 %169)
  %171 = load i32*, i32** @ccdc_ctx, align 8
  %172 = load i32, i32* @CCDC_FMT_ADDR0, align 4
  %173 = ashr i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %170, i32* %175, align 4
  %176 = load i32, i32* @CCDC_FMT_ADDR1, align 4
  %177 = call i32 @regr(i32 %176)
  %178 = load i32*, i32** @ccdc_ctx, align 8
  %179 = load i32, i32* @CCDC_FMT_ADDR1, align 4
  %180 = ashr i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load i32, i32* @CCDC_FMT_ADDR2, align 4
  %184 = call i32 @regr(i32 %183)
  %185 = load i32*, i32** @ccdc_ctx, align 8
  %186 = load i32, i32* @CCDC_FMT_ADDR2, align 4
  %187 = ashr i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32, i32* @CCDC_FMT_ADDR3, align 4
  %191 = call i32 @regr(i32 %190)
  %192 = load i32*, i32** @ccdc_ctx, align 8
  %193 = load i32, i32* @CCDC_FMT_ADDR3, align 4
  %194 = ashr i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  %197 = load i32, i32* @CCDC_FMT_ADDR4, align 4
  %198 = call i32 @regr(i32 %197)
  %199 = load i32*, i32** @ccdc_ctx, align 8
  %200 = load i32, i32* @CCDC_FMT_ADDR4, align 4
  %201 = ashr i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load i32, i32* @CCDC_FMT_ADDR5, align 4
  %205 = call i32 @regr(i32 %204)
  %206 = load i32*, i32** @ccdc_ctx, align 8
  %207 = load i32, i32* @CCDC_FMT_ADDR5, align 4
  %208 = ashr i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %205, i32* %210, align 4
  %211 = load i32, i32* @CCDC_FMT_ADDR6, align 4
  %212 = call i32 @regr(i32 %211)
  %213 = load i32*, i32** @ccdc_ctx, align 8
  %214 = load i32, i32* @CCDC_FMT_ADDR6, align 4
  %215 = ashr i32 %214, 2
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 %212, i32* %217, align 4
  %218 = load i32, i32* @CCDC_FMT_ADDR7, align 4
  %219 = call i32 @regr(i32 %218)
  %220 = load i32*, i32** @ccdc_ctx, align 8
  %221 = load i32, i32* @CCDC_FMT_ADDR7, align 4
  %222 = ashr i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %219, i32* %224, align 4
  %225 = load i32, i32* @CCDC_PRGEVEN_0, align 4
  %226 = call i32 @regr(i32 %225)
  %227 = load i32*, i32** @ccdc_ctx, align 8
  %228 = load i32, i32* @CCDC_PRGEVEN_0, align 4
  %229 = ashr i32 %228, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* @CCDC_PRGEVEN_1, align 4
  %233 = call i32 @regr(i32 %232)
  %234 = load i32*, i32** @ccdc_ctx, align 8
  %235 = load i32, i32* @CCDC_PRGEVEN_1, align 4
  %236 = ashr i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  store i32 %233, i32* %238, align 4
  %239 = load i32, i32* @CCDC_PRGODD_0, align 4
  %240 = call i32 @regr(i32 %239)
  %241 = load i32*, i32** @ccdc_ctx, align 8
  %242 = load i32, i32* @CCDC_PRGODD_0, align 4
  %243 = ashr i32 %242, 2
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load i32, i32* @CCDC_PRGODD_1, align 4
  %247 = call i32 @regr(i32 %246)
  %248 = load i32*, i32** @ccdc_ctx, align 8
  %249 = load i32, i32* @CCDC_PRGODD_1, align 4
  %250 = ashr i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 %247, i32* %252, align 4
  %253 = load i32, i32* @CCDC_VP_OUT, align 4
  %254 = call i32 @regr(i32 %253)
  %255 = load i32*, i32** @ccdc_ctx, align 8
  %256 = load i32, i32* @CCDC_VP_OUT, align 4
  %257 = ashr i32 %256, 2
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %254, i32* %259, align 4
  ret void
}

declare dso_local i32 @regr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
