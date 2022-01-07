; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ks0127.c_ks0127_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ks0127 = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"s_routing %d: Composite\0A\00", align 1
@KS_CMDA = common dso_local global i64 0, align 8
@KS_CMDB = common dso_local global i64 0, align 8
@KS_CMDC = common dso_local global i64 0, align 8
@KS_CMDD = common dso_local global i64 0, align 8
@KS_CTRACK = common dso_local global i64 0, align 8
@KS_LUMA = common dso_local global i64 0, align 8
@reg_defaults = common dso_local global i32* null, align 8
@KS_VERTIA = common dso_local global i64 0, align 8
@KS_VERTIC = common dso_local global i64 0, align 8
@KS_CHROMB = common dso_local global i64 0, align 8
@KS_UGAIN = common dso_local global i64 0, align 8
@KS_VGAIN = common dso_local global i64 0, align 8
@KS_UVOFFH = common dso_local global i64 0, align 8
@KS_UVOFFL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"s_routing %d: S-Video\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"s_routing 15: YUV656\0A\00", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@KS_CON = common dso_local global i64 0, align 8
@KS_BRT = common dso_local global i64 0, align 8
@KS_SAT = common dso_local global i64 0, align 8
@KS_HUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"s_routing: Unknown input %d\0A\00", align 1
@KS_DEMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @ks0127_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks0127_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ks0127*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.ks0127* @to_ks0127(%struct.v4l2_subdev* %10)
  store %struct.ks0127* %11, %struct.ks0127** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %248 [
    i32 137, label %13
    i32 136, label %13
    i32 135, label %13
    i32 134, label %13
    i32 133, label %13
    i32 132, label %13
    i32 131, label %82
    i32 130, label %82
    i32 129, label %82
    i32 128, label %166
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = load i64, i64* @KS_CMDA, align 8
  %20 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %18, i64 %19, i32 252, i32 0)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = load i64, i64* @KS_CMDA, align 8
  %23 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %21, i64 %22, i32 -65, i32 0)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i64, i64* @KS_CMDB, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %24, i64 %25, i32 176, i32 %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %29 = load i64, i64* @KS_CMDC, align 8
  %30 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %28, i64 %29, i32 112, i32 10)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = load i64, i64* @KS_CMDD, align 8
  %33 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %31, i64 %32, i32 3, i32 0)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = load i64, i64* @KS_CTRACK, align 8
  %36 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %34, i64 %35, i32 207, i32 0)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %38 = load i64, i64* @KS_LUMA, align 8
  %39 = load i32*, i32** @reg_defaults, align 8
  %40 = load i64, i64* @KS_LUMA, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 12
  %44 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %37, i64 %38, i32 0, i32 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load i64, i64* @KS_VERTIA, align 8
  %47 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %45, i64 %46, i32 8, i32 129)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %49 = load i64, i64* @KS_VERTIC, align 8
  %50 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %48, i64 %49, i32 15, i32 144)
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = load i64, i64* @KS_CHROMB, align 8
  %53 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %51, i64 %52, i32 15, i32 144)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %55 = load i64, i64* @KS_UGAIN, align 8
  %56 = load i32*, i32** @reg_defaults, align 8
  %57 = load i64, i64* @KS_UGAIN, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ks0127_write(%struct.v4l2_subdev* %54, i64 %55, i32 %59)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %62 = load i64, i64* @KS_VGAIN, align 8
  %63 = load i32*, i32** @reg_defaults, align 8
  %64 = load i64, i64* @KS_VGAIN, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ks0127_write(%struct.v4l2_subdev* %61, i64 %62, i32 %66)
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %69 = load i64, i64* @KS_UVOFFH, align 8
  %70 = load i32*, i32** @reg_defaults, align 8
  %71 = load i64, i64* @KS_UVOFFH, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ks0127_write(%struct.v4l2_subdev* %68, i64 %69, i32 %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %76 = load i64, i64* @KS_UVOFFL, align 8
  %77 = load i32*, i32** @reg_defaults, align 8
  %78 = load i64, i64* @KS_UVOFFL, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ks0127_write(%struct.v4l2_subdev* %75, i64 %76, i32 %80)
  br label %253

82:                                               ; preds = %4, %4, %4
  %83 = load i32, i32* @debug, align 4
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %83, %struct.v4l2_subdev* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %88 = load i64, i64* @KS_CMDA, align 8
  %89 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %87, i64 %88, i32 252, i32 0)
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %91 = load i64, i64* @KS_CMDA, align 8
  %92 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %90, i64 %91, i32 -65, i32 0)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %94 = load i64, i64* @KS_CMDB, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %93, i64 %94, i32 176, i32 %95)
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %98 = load i64, i64* @KS_CMDC, align 8
  %99 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %97, i64 %98, i32 112, i32 10)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %101 = load i64, i64* @KS_CMDD, align 8
  %102 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %100, i64 %101, i32 3, i32 0)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %104 = load i64, i64* @KS_CTRACK, align 8
  %105 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %103, i64 %104, i32 207, i32 0)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %107 = load i64, i64* @KS_LUMA, align 8
  %108 = load i32*, i32** @reg_defaults, align 8
  %109 = load i64, i64* @KS_LUMA, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %106, i64 %107, i32 0, i32 %111)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %114 = load i64, i64* @KS_VERTIA, align 8
  %115 = load i32*, i32** @reg_defaults, align 8
  %116 = load i64, i64* @KS_VERTIA, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 240
  %120 = or i32 %119, 1
  %121 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %113, i64 %114, i32 8, i32 %120)
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %123 = load i64, i64* @KS_VERTIC, align 8
  %124 = load i32*, i32** @reg_defaults, align 8
  %125 = load i64, i64* @KS_VERTIC, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 240
  %129 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %122, i64 %123, i32 15, i32 %128)
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %131 = load i64, i64* @KS_CHROMB, align 8
  %132 = load i32*, i32** @reg_defaults, align 8
  %133 = load i64, i64* @KS_CHROMB, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 240
  %137 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %130, i64 %131, i32 15, i32 %136)
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %139 = load i64, i64* @KS_UGAIN, align 8
  %140 = load i32*, i32** @reg_defaults, align 8
  %141 = load i64, i64* @KS_UGAIN, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ks0127_write(%struct.v4l2_subdev* %138, i64 %139, i32 %143)
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %146 = load i64, i64* @KS_VGAIN, align 8
  %147 = load i32*, i32** @reg_defaults, align 8
  %148 = load i64, i64* @KS_VGAIN, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ks0127_write(%struct.v4l2_subdev* %145, i64 %146, i32 %150)
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %153 = load i64, i64* @KS_UVOFFH, align 8
  %154 = load i32*, i32** @reg_defaults, align 8
  %155 = load i64, i64* @KS_UVOFFH, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ks0127_write(%struct.v4l2_subdev* %152, i64 %153, i32 %157)
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %160 = load i64, i64* @KS_UVOFFL, align 8
  %161 = load i32*, i32** @reg_defaults, align 8
  %162 = load i64, i64* @KS_UVOFFL, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ks0127_write(%struct.v4l2_subdev* %159, i64 %160, i32 %164)
  br label %253

166:                                              ; preds = %4
  %167 = load i32, i32* @debug, align 4
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %169 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %167, %struct.v4l2_subdev* %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.ks0127*, %struct.ks0127** %9, align 8
  %171 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @V4L2_STD_525_60, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %178 = load i64, i64* @KS_CMDA, align 8
  %179 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %177, i64 %178, i32 252, i32 3)
  br label %184

180:                                              ; preds = %166
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %182 = load i64, i64* @KS_CMDA, align 8
  %183 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %181, i64 %182, i32 252, i32 2)
  br label %184

184:                                              ; preds = %180, %176
  %185 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %186 = load i64, i64* @KS_CMDA, align 8
  %187 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %185, i64 %186, i32 255, i32 64)
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %189 = load i64, i64* @KS_CMDB, align 8
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, 64
  %192 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %188, i64 %189, i32 176, i32 %191)
  %193 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %194 = load i64, i64* @KS_CMDC, align 8
  %195 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %193, i64 %194, i32 112, i32 135)
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %197 = load i64, i64* @KS_CMDD, align 8
  %198 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %196, i64 %197, i32 3, i32 8)
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %200 = load i64, i64* @KS_CTRACK, align 8
  %201 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %199, i64 %200, i32 207, i32 48)
  %202 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %203 = load i64, i64* @KS_LUMA, align 8
  %204 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %202, i64 %203, i32 0, i32 113)
  %205 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %206 = load i64, i64* @KS_VERTIC, align 8
  %207 = load i32*, i32** @reg_defaults, align 8
  %208 = load i64, i64* @KS_VERTIC, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 240
  %212 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %205, i64 %206, i32 15, i32 %211)
  %213 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %214 = load i64, i64* @KS_VERTIA, align 8
  %215 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %213, i64 %214, i32 8, i32 129)
  %216 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %217 = load i64, i64* @KS_CHROMB, align 8
  %218 = load i32*, i32** @reg_defaults, align 8
  %219 = load i64, i64* @KS_CHROMB, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 240
  %223 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %216, i64 %217, i32 15, i32 %222)
  %224 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %225 = load i64, i64* @KS_CON, align 8
  %226 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %224, i64 %225, i32 0, i32 0)
  %227 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %228 = load i64, i64* @KS_BRT, align 8
  %229 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %227, i64 %228, i32 0, i32 32)
  %230 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %231 = load i64, i64* @KS_SAT, align 8
  %232 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %230, i64 %231, i32 0, i32 232)
  %233 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %234 = load i64, i64* @KS_HUE, align 8
  %235 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %233, i64 %234, i32 0, i32 0)
  %236 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %237 = load i64, i64* @KS_UGAIN, align 8
  %238 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %236, i64 %237, i32 0, i32 238)
  %239 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %240 = load i64, i64* @KS_VGAIN, align 8
  %241 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %239, i64 %240, i32 0, i32 0)
  %242 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %243 = load i64, i64* @KS_UVOFFH, align 8
  %244 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %242, i64 %243, i32 0, i32 79)
  %245 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %246 = load i64, i64* @KS_UVOFFL, align 8
  %247 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %245, i64 %246, i32 0, i32 0)
  br label %253

248:                                              ; preds = %4
  %249 = load i32, i32* @debug, align 4
  %250 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %249, %struct.v4l2_subdev* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %248, %184, %82, %13
  %254 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %255 = load i64, i64* @KS_DEMOD, align 8
  %256 = load i32*, i32** @reg_defaults, align 8
  %257 = load i64, i64* @KS_DEMOD, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ks0127_write(%struct.v4l2_subdev* %254, i64 %255, i32 %259)
  ret i32 0
}

declare dso_local %struct.ks0127* @to_ks0127(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @ks0127_and_or(%struct.v4l2_subdev*, i64, i32, i32) #1

declare dso_local i32 @ks0127_write(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
