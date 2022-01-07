; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_init_reg_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_init_reg_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_reg_defaults.initialized = internal global i32 0, align 4
@reg_defaults = common dso_local global i32* null, align 8
@KS_CMDA = common dso_local global i64 0, align 8
@KS_CMDB = common dso_local global i64 0, align 8
@KS_CMDC = common dso_local global i64 0, align 8
@KS_CMDD = common dso_local global i64 0, align 8
@KS_HAVB = common dso_local global i64 0, align 8
@KS_HAVE = common dso_local global i64 0, align 8
@KS_HS1B = common dso_local global i64 0, align 8
@KS_HS1E = common dso_local global i64 0, align 8
@KS_HS2B = common dso_local global i64 0, align 8
@KS_HS2E = common dso_local global i64 0, align 8
@KS_AGC = common dso_local global i64 0, align 8
@KS_HXTRA = common dso_local global i64 0, align 8
@KS_CDEM = common dso_local global i64 0, align 8
@KS_PORTAB = common dso_local global i64 0, align 8
@KS_LUMA = common dso_local global i64 0, align 8
@KS_CON = common dso_local global i64 0, align 8
@KS_BRT = common dso_local global i64 0, align 8
@KS_CHROMA = common dso_local global i64 0, align 8
@KS_CHROMB = common dso_local global i64 0, align 8
@KS_DEMOD = common dso_local global i64 0, align 8
@KS_SAT = common dso_local global i64 0, align 8
@KS_HUE = common dso_local global i64 0, align 8
@KS_VERTIA = common dso_local global i64 0, align 8
@KS_VERTIB = common dso_local global i64 0, align 8
@KS_VERTIC = common dso_local global i64 0, align 8
@KS_HSCLL = common dso_local global i64 0, align 8
@KS_HSCLH = common dso_local global i64 0, align 8
@KS_VSCLL = common dso_local global i64 0, align 8
@KS_VSCLH = common dso_local global i64 0, align 8
@KS_OFMTA = common dso_local global i64 0, align 8
@KS_OFMTB = common dso_local global i64 0, align 8
@KS_VBICTL = common dso_local global i64 0, align 8
@KS_CCDAT2 = common dso_local global i64 0, align 8
@KS_CCDAT1 = common dso_local global i64 0, align 8
@KS_VBIL30 = common dso_local global i64 0, align 8
@KS_VBIL74 = common dso_local global i64 0, align 8
@KS_VBIL118 = common dso_local global i64 0, align 8
@KS_VBIL1512 = common dso_local global i64 0, align 8
@KS_TTFRAM = common dso_local global i64 0, align 8
@KS_TESTA = common dso_local global i64 0, align 8
@KS_UVOFFH = common dso_local global i64 0, align 8
@KS_UVOFFL = common dso_local global i64 0, align 8
@KS_UGAIN = common dso_local global i64 0, align 8
@KS_VGAIN = common dso_local global i64 0, align 8
@KS_VAVB = common dso_local global i64 0, align 8
@KS_VAVE = common dso_local global i64 0, align 8
@KS_CTRACK = common dso_local global i64 0, align 8
@KS_POLCTL = common dso_local global i64 0, align 8
@KS_REFCOD = common dso_local global i64 0, align 8
@KS_INVALY = common dso_local global i64 0, align 8
@KS_INVALU = common dso_local global i64 0, align 8
@KS_INVALV = common dso_local global i64 0, align 8
@KS_UNUSEY = common dso_local global i64 0, align 8
@KS_UNUSEU = common dso_local global i64 0, align 8
@KS_UNUSEV = common dso_local global i64 0, align 8
@KS_USRSAV = common dso_local global i64 0, align 8
@KS_USREAV = common dso_local global i64 0, align 8
@KS_SHS1A = common dso_local global i64 0, align 8
@KS_SHS1B = common dso_local global i64 0, align 8
@KS_SHS1C = common dso_local global i64 0, align 8
@KS_CMDE = common dso_local global i64 0, align 8
@KS_VSDEL = common dso_local global i64 0, align 8
@KS_CMDF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_reg_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reg_defaults() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @reg_defaults, align 8
  store i32* %2, i32** %1, align 8
  %3 = load i32, i32* @init_reg_defaults.initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %196

6:                                                ; preds = %0
  store i32 1, i32* @init_reg_defaults.initialized, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i64, i64* @KS_CMDA, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 44, i32* %9, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i64, i64* @KS_CMDB, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 18, i32* %12, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = load i64, i64* @KS_CMDC, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %1, align 8
  %17 = load i64, i64* @KS_CMDD, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 1, i32* %18, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = load i64, i64* @KS_HAVB, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = load i64, i64* @KS_HAVE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = load i64, i64* @KS_HS1B, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 16, i32* %27, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = load i64, i64* @KS_HS1E, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = load i64, i64* @KS_HS2B, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = load i64, i64* @KS_HS2E, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = load i64, i64* @KS_AGC, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 83, i32* %39, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = load i64, i64* @KS_HXTRA, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %1, align 8
  %44 = load i64, i64* @KS_CDEM, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = load i64, i64* @KS_PORTAB, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 15, i32* %48, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = load i64, i64* @KS_LUMA, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 1, i32* %51, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = load i64, i64* @KS_CON, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = load i64, i64* @KS_BRT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %1, align 8
  %59 = load i64, i64* @KS_CHROMA, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 42, i32* %60, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = load i64, i64* @KS_CHROMB, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 144, i32* %63, align 4
  %64 = load i32*, i32** %1, align 8
  %65 = load i64, i64* @KS_DEMOD, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = load i64, i64* @KS_SAT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %1, align 8
  %71 = load i64, i64* @KS_HUE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %1, align 8
  %74 = load i64, i64* @KS_VERTIA, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 0, i32* %75, align 4
  %76 = load i32*, i32** %1, align 8
  %77 = load i64, i64* @KS_VERTIB, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 18, i32* %78, align 4
  %79 = load i32*, i32** %1, align 8
  %80 = load i64, i64* @KS_VERTIC, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 11, i32* %81, align 4
  %82 = load i32*, i32** %1, align 8
  %83 = load i64, i64* @KS_HSCLL, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %1, align 8
  %86 = load i64, i64* @KS_HSCLH, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load i32*, i32** %1, align 8
  %89 = load i64, i64* @KS_VSCLL, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %1, align 8
  %92 = load i64, i64* @KS_VSCLH, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 0, i32* %93, align 4
  %94 = load i32*, i32** %1, align 8
  %95 = load i64, i64* @KS_OFMTA, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 48, i32* %96, align 4
  %97 = load i32*, i32** %1, align 8
  %98 = load i64, i64* @KS_OFMTB, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load i32*, i32** %1, align 8
  %101 = load i64, i64* @KS_VBICTL, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 93, i32* %102, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = load i64, i64* @KS_CCDAT2, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** %1, align 8
  %107 = load i64, i64* @KS_CCDAT1, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %1, align 8
  %110 = load i64, i64* @KS_VBIL30, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 168, i32* %111, align 4
  %112 = load i32*, i32** %1, align 8
  %113 = load i64, i64* @KS_VBIL74, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 170, i32* %114, align 4
  %115 = load i32*, i32** %1, align 8
  %116 = load i64, i64* @KS_VBIL118, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 42, i32* %117, align 4
  %118 = load i32*, i32** %1, align 8
  %119 = load i64, i64* @KS_VBIL1512, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 0, i32* %120, align 4
  %121 = load i32*, i32** %1, align 8
  %122 = load i64, i64* @KS_TTFRAM, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 0, i32* %123, align 4
  %124 = load i32*, i32** %1, align 8
  %125 = load i64, i64* @KS_TESTA, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load i32*, i32** %1, align 8
  %128 = load i64, i64* @KS_UVOFFH, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %1, align 8
  %131 = load i64, i64* @KS_UVOFFL, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %1, align 8
  %134 = load i64, i64* @KS_UGAIN, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %1, align 8
  %137 = load i64, i64* @KS_VGAIN, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %1, align 8
  %140 = load i64, i64* @KS_VAVB, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 7, i32* %141, align 4
  %142 = load i32*, i32** %1, align 8
  %143 = load i64, i64* @KS_VAVE, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 0, i32* %144, align 4
  %145 = load i32*, i32** %1, align 8
  %146 = load i64, i64* @KS_CTRACK, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 0, i32* %147, align 4
  %148 = load i32*, i32** %1, align 8
  %149 = load i64, i64* @KS_POLCTL, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 65, i32* %150, align 4
  %151 = load i32*, i32** %1, align 8
  %152 = load i64, i64* @KS_REFCOD, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 128, i32* %153, align 4
  %154 = load i32*, i32** %1, align 8
  %155 = load i64, i64* @KS_INVALY, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 16, i32* %156, align 4
  %157 = load i32*, i32** %1, align 8
  %158 = load i64, i64* @KS_INVALU, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32 128, i32* %159, align 4
  %160 = load i32*, i32** %1, align 8
  %161 = load i64, i64* @KS_INVALV, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 128, i32* %162, align 4
  %163 = load i32*, i32** %1, align 8
  %164 = load i64, i64* @KS_UNUSEY, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 16, i32* %165, align 4
  %166 = load i32*, i32** %1, align 8
  %167 = load i64, i64* @KS_UNUSEU, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 128, i32* %168, align 4
  %169 = load i32*, i32** %1, align 8
  %170 = load i64, i64* @KS_UNUSEV, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 128, i32* %171, align 4
  %172 = load i32*, i32** %1, align 8
  %173 = load i64, i64* @KS_USRSAV, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 0, i32* %174, align 4
  %175 = load i32*, i32** %1, align 8
  %176 = load i64, i64* @KS_USREAV, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 0, i32* %177, align 4
  %178 = load i32*, i32** %1, align 8
  %179 = load i64, i64* @KS_SHS1A, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32 0, i32* %180, align 4
  %181 = load i32*, i32** %1, align 8
  %182 = load i64, i64* @KS_SHS1B, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 128, i32* %183, align 4
  %184 = load i32*, i32** %1, align 8
  %185 = load i64, i64* @KS_SHS1C, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 0, i32* %186, align 4
  %187 = load i32*, i32** %1, align 8
  %188 = load i64, i64* @KS_CMDE, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 0, i32* %189, align 4
  %190 = load i32*, i32** %1, align 8
  %191 = load i64, i64* @KS_VSDEL, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 0, i32* %192, align 4
  %193 = load i32*, i32** %1, align 8
  %194 = load i64, i64* @KS_CMDF, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 2, i32* %195, align 4
  br label %196

196:                                              ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
